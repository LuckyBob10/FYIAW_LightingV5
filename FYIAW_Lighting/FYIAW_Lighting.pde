import java.awt.image.BufferedImage;
import java.awt.*;
import dmxP512.*;
import processing.serial.*;

String config_file = "../../config/sample.json";


OPC        opc;
PImage     screen_shot;
JSONObject config;

GraphicsEnvironment ge   = GraphicsEnvironment.getLocalGraphicsEnvironment();
GraphicsDevice[]    gs   = ge.getScreenDevices();
DisplayMode         mode = gs[0].getDisplayMode();
DmxP512             dmx;


void setup() {
  println("FYIAW Lighting v5");
  println("-----------------");
  
  // Check if config_file exists
  println(" - Checking if config file exists: " + config_file);
  File cf = new File(dataPath(config_file));
  
  if (!cf.exists()) {
    println("ERROR: Config file does not exist!");
    exit();
  }
  else {
    // Load JSON config
    println(" - Loading config file - note that crashes here likely indicate corrupt JSON syntax");
    config = loadJSONObject(config_file);
    
    // Show capture size
    println(
      " - Capture size: " +
      config.getJSONObject("general").getInt("capture_size_x") + 
      "x" +
      config.getJSONObject("general").getInt("capture_size_y")
    );
    
    // Get number of DMX lighting groups to calculate window Y size
    JSONArray dmx_groups = config.getJSONObject("dmx").getJSONArray("dmx_groups");
    println(" - Found " + dmx_groups.size() + " DMX lighting group(s) in config");
    int size_y = config.getJSONObject("general").getInt("capture_size_y") + window_size_offset_y + (window_size_dmx_group_height * dmx_groups.size());
    
    // Get max number of fixtures to calculate window X size and number of DMX fixtures
    for (int i=0; i<dmx_groups.size(); i++) {
      println(" - Counting fixtures in DMX group: " + i);
      JSONArray group_fixtures = dmx_groups.getJSONObject(i).getJSONArray("fixtures");
      if (group_fixtures.size() > dmx_group_max_fixtures) {
        dmx_group_max_fixtures = group_fixtures.size();
      }
      dmx_universe_size += group_fixtures.size();
    }
    println(" - Total number of DMX fixtures: " + dmx_universe_size);
    println(" - Max number of fixtures in a DMX group: " + dmx_group_max_fixtures);
    int size_min_x = window_size_dmx_fixture_width * dmx_group_max_fixtures;
    int size_x = config.getJSONObject("general").getInt("capture_size_x") + window_size_offset_x;
    if (size_x < size_min_x) {
      size_x = size_min_x;
    }
      
    // Set window size
    println(" - Final window size: " + size_x + "x" + size_y);
    size(size_x, size_y);
    
    // Set frame rate
    println(" - Target frame rate: " + config.getJSONObject("general").getInt("target_frame_rate") + "fps");
    frameRate(config.getJSONObject("general").getInt("target_frame_rate"));
    if (frame != null) {
      frame.setAlwaysOnTop(true);
    }
    frame.setResizable(false);
    
    // Draw initial layout
    fill(0);
    
    // Set up LED board
    if (!config.getJSONObject("led_board").getBoolean("enabled")) {
      println(" - LED board disabled for this session");
    }
    else {
      println(" - Configuring LED board");
      try {
        opc = new OPC(this, config.getJSONObject("led_board").getString("opc_address"), config.getJSONObject("led_board").getInt("opc_port"));
        int led_spacing_x = floor(config.getJSONObject("general").getInt("capture_size_x") / (config.getJSONObject("led_board").getInt("pixels_x") * config.getJSONObject("led_board").getFloat("spacing_x")));
        int led_spacing_y = floor(config.getJSONObject("general").getInt("capture_size_y") / (config.getJSONObject("led_board").getInt("pixels_y") * config.getJSONObject("led_board").getFloat("spacing_y")));
        println(" - LED board pixel count: " + config.getJSONObject("led_board").getInt("pixels_x") + "x" + config.getJSONObject("led_board").getInt("pixels_y"));
        println(" - LED board capture pixel spacing: " + led_spacing_x + "x" + led_spacing_y);
        
        for (int led_strip=0; led_strip<config.getJSONObject("led_board").getInt("pixels_y"); led_strip++) {
          println(" - Adding LED strip #" + led_strip);
          // ledStrip(int index, int count, float x, float y, float spacing, float angle, boolean reversed)
          opc.ledStrip(
            led_strip * config.getJSONObject("led_board").getInt("pixels_x"),
            config.getJSONObject("led_board").getInt("pixels_x"),
            config.getJSONObject("general").getInt("capture_size_x") / 2,
            (led_strip * led_spacing_y) + (led_spacing_y / 2),
            led_spacing_x,
            0,
            false
          );
        }
        println(" - LED board configured successfully");
      }
      catch (Exception e) {
        println("WARNING: Unable to configure LED board");
        println("         LED board will be forcibly disabled for this session");
        led_board_enabled = false;
      }
    }
    
    // Set up DMX output device
    if (!config.getJSONObject("dmx").getJSONObject("general").getBoolean("enabled")) {
      println(" - DMX output disabled for this session");
    }
    else {
      println(" - Configuring DMXPro output");
      try {
        dmx = new DmxP512(this, dmx_universe_size+1, false);
        dmx.setupDmxPro(
          config.getJSONObject("dmx").getJSONObject("general").getString("com_port"),
          config.getJSONObject("dmx").getJSONObject("general").getInt("com_baudrate")
        );
        println(" - DMXPro output configured successfully");
      }
      catch (Exception e) {
        println("WARNING: Could not connect to DMXPro serial port: " + config.getJSONObject("dmx").getJSONObject("general").getString("com_port"));
        println("         DMX output will be forcibly disabled for this session");
        dmx_enabled = false;   
      }
    }
    
    // Set up screen capture object
    desktop = new BufferedImage(mode.getWidth(), config.getJSONObject("general").getInt("capture_size_y"), BufferedImage.TYPE_INT_RGB);
  }
}

void draw() {
  //Set initial position
  if (initial_position_counter < 15) {
    frame.setLocation(
      config.getJSONObject("general").getInt("initial_x"),
      config.getJSONObject("general").getInt("initial_y")
    );
    initial_position_counter++;
  }
  
  // Capture and display screen
  screen_shot = getScreen();
  image(
    screen_shot,
    0,
    0,
    width,
    config.getJSONObject("general").getInt("capture_size_y")
  );
  
  // Set frame title
  frame.setTitle(
    "FYIAW Lighting v5 - " +
    int(frameRate) +
    " fps, beatcount " +
    dmx_beat_count
  );
  
}

PImage getScreen() {
  Rectangle bounds = new Rectangle(
    frame.getLocation().x,
    frame.getLocation().y - config.getJSONObject("general").getInt("capture_size_y") - 24,
    width,
    config.getJSONObject("general").getInt("capture_size_y")
  );
  try {
    desktop = new Robot(gs[0]).createScreenCapture(bounds);
  }
  catch(AWTException e) {
  }
  return (new PImage(desktop));
}
