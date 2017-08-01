import java.awt.image.BufferedImage;
import java.awt.*;
import dmxP512.*;
import processing.serial.*;

String config_file = "../../config/Firehouse_2017.json";

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
    dmx_groups = config.getJSONObject("dmx").getJSONArray("dmx_groups");
    println(" - Found " + dmx_groups.size() + " DMX group(s) in config");
    window_size_y = config.getJSONObject("general").getInt("capture_size_y") + window_size_offset_y + (window_size_dmx_group_height * dmx_groups.size());
    
    // Get max number of fixtures to calculate window X size and number of DMX fixtures
    for (int i=0; i<dmx_groups.size(); i++) {
      println(" - Counting fixtures in DMX group: " + i);
      group_fixtures = dmx_groups.getJSONObject(i).getJSONArray("fixtures");
      if (group_fixtures.size() > dmx_group_max_fixtures) {
        dmx_group_max_fixtures = group_fixtures.size();
      }
      dmx_universe_size += group_fixtures.size();
    }
    println(" - Total number of DMX fixtures: " + dmx_universe_size);
    println(" - Max number of fixtures in a DMX group: " + dmx_group_max_fixtures);
    int size_min_x = window_size_dmx_fixture_width * dmx_group_max_fixtures;
    window_size_x = config.getJSONObject("general").getInt("capture_size_x") + window_size_offset_x;
    if (window_size_x < size_min_x) {
      window_size_x = size_min_x;
    }
      
    // Set window size
    if (
      config.getJSONObject("general").getInt("window_size_x") > 0 &&
      config.getJSONObject("general").getInt("window_size_x") > window_size_x
    ) {
      window_size_x = config.getJSONObject("general").getInt("window_size_x");
    }
    if (
      config.getJSONObject("general").getInt("window_size_y") > 0 &&
      config.getJSONObject("general").getInt("window_size_y") > window_size_y
    ) {
      window_size_y = config.getJSONObject("general").getInt("window_size_y");
    }
    println(" - Final window size: " + window_size_x + "x" + window_size_y);
    size(window_size_x, window_size_y);
    
    // Set frame rate
    println(" - Target frame rate: " + config.getJSONObject("general").getInt("target_frame_rate") + "fps");
    frameRate(config.getJSONObject("general").getInt("target_frame_rate"));
    if (frame != null) {
      frame.setAlwaysOnTop(true);
    }
    frame.setResizable(false);
    
    // Set beat pixel
    beat_pixel_x = config.getJSONObject("general").getInt("beat_pixel_x");
    beat_pixel_y = config.getJSONObject("general").getInt("beat_pixel_y");
    
    // Draw initial layout
    colorMode(RGB, 255, 255, 255);
    background(0);
    fill(255);
    stroke(255);
    
    // Draw DMX groups
    println(" - Drawing DMX group labels");
    textSize(10);
    for (int i=0; i<dmx_groups.size(); i++) {
      text(
        "DMX Group: " + dmx_groups.getJSONObject(i).getString("name"),
        0,
        config.getJSONObject("general").getInt("capture_size_y") + 8 + (i * 32)
      );
    }
    
    // Set up LED board
    if (!config.getJSONObject("led_board").getBoolean("enabled")) {
      println(" - LED board disabled for this session");
    }
    else {
      println(" - Configuring LED board");
      try {
        opc = new OPC(this, config.getJSONObject("led_board").getString("opc_address"), config.getJSONObject("led_board").getInt("opc_port"));
        // TODO: Use board_x1~board_y2 for placement of capture area
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
      dmx_enabled = false;
    }
    else {
      println(" - Configuring DMXPro output with universe size: " + dmx_universe_size);
      try {
        dmx = new DmxP512(this, 150, false);
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
    
    // Reset drawing settings
    stroke(127);
    //noStroke();
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
  
  // Beat detection
  beat_pixel_val = get(beat_pixel_x, beat_pixel_y);
  if (
    (beat_pixel_val == color(255) || beat_pixel_val == color(0)) && 
    beat_pixel_val != beat_pixel_last
  ) {
    beat_pixel_last = beat_pixel_val;
    if (beat_pixel_val == color(255)) {
      beat_count++;
    }
  }
  
  // DMX
  int[] dmx_data = new int[255];
  if (dmx_test) {
    dmx_data = dmx_test();
  }
  else if (dmx_fixed_color) {
    dmx_data = dmx_fixed_color();
  }
  else {
    // Capture pixels for fixtures
    for (int group_num=0; group_num<dmx_groups.size(); group_num++) {
      // Walk all DMX group fixtures
      group = dmx_groups.getJSONObject(group_num);
      group_fixtures = group.getJSONArray("fixtures");
      
      for (int fixture_num=0; fixture_num<group_fixtures.size(); fixture_num++) {
        fixture = group_fixtures.getJSONObject(fixture_num);
        fixture_type = fixture.getString("type");
        
        // RGB fixture
        if (fixture_type.equals("rgb")) {
          int[] fixture_color = dmx_fixture_rgb(fixture, group);
          dmx_data[fixture.getJSONArray("channels").getInt(0)] = fixture_color[0];
          dmx_data[fixture.getJSONArray("channels").getInt(1)] = fixture_color[1];
          dmx_data[fixture.getJSONArray("channels").getInt(2)] = fixture_color[2];
        }
        
        // Monochrome fixture 
        else if (fixture_type.equals("monochrome")) {
          dmx_data[fixture.getInt("channel")] = dmx_fixture_monochrome(fixture, group);
        }
        
        // Static fixture
        else if (fixture_type.equals("fixed")) {
          dmx_data[fixture.getInt("channel")] = fixture.getInt("value");
        }
        
        // Unhandled fixture type
        else {
          println(" - Unhandled fixture type: '" + fixture_type + "', name: " + fixture.getString("name"));
        }
      }
    }
  
    // Apply effects
    dmx_data = dmx_effects(dmx_data);
    
    // Render to screen
    for (int group_num=0; group_num<dmx_groups.size(); group_num++) {
      // Walk all DMX group fixtures
      group = dmx_groups.getJSONObject(group_num);
      group_fixtures = group.getJSONArray("fixtures");
      
      for (int fixture_num=0; fixture_num<group_fixtures.size(); fixture_num++) {
        fixture = group_fixtures.getJSONObject(fixture_num);
        fixture_type = fixture.getString("type");
        
        if (fixture_type.equals("rgb")) {
          fill(
            dmx_data[fixture.getJSONArray("channels").getInt(0)],
            dmx_data[fixture.getJSONArray("channels").getInt(1)],
            dmx_data[fixture.getJSONArray("channels").getInt(2)]
          );
          rect(
            fixture_num * 24,
            config.getJSONObject("general").getInt("capture_size_y") + (group_num * 32) + 10,
            16,
            16
          );
        }
        else if (fixture_type.equals("monochrome")) {
          int channel_value = dmx_data[fixture.getInt("channel")];
          fill(channel_value, channel_value, channel_value);
          ellipse(
            fixture_num * 24 + 8,
            config.getJSONObject("general").getInt("capture_size_y") + (group_num * 32) + 18,
            16,
            16
          );
        }
        
        // Static fixture
        else if (fixture_type.equals("fixed")) {
          int channel_value = dmx_data[fixture.getInt("channel")];
          fill(channel_value, channel_value, channel_value);
          triangle(
            fixture_num * 24,
            config.getJSONObject("general").getInt("capture_size_y") + (group_num * 32) + 26,
            fixture_num * 24 + 8,
            config.getJSONObject("general").getInt("capture_size_y") + (group_num * 32) + 10,
            fixture_num * 24 + 16,
            config.getJSONObject("general").getInt("capture_size_y") + (group_num * 32) + 26
          );
        }
      }
    }
    
    // Send to DMXPro
    if (dmx_enabled) {
      dmx.set(0, dmx_data);
    }
  }
  
  // Set frame title
  frame.setTitle(
    "FYIAW Lighting v5 - " +
    int(frameRate) +
    " fps, beatcount " +
    beat_count
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
