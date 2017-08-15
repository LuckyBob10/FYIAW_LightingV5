int[] dmx_test() {
  int[] dmx_data = new int[255];
  // Cycle all DMX channels in universe
  
  return dmx_data;
}

color dmx_capture_pixel(int x, int y) {
  return color(get(x, y));
}

int[] dmx_fixture_rgb(JSONObject fixture, JSONObject group) {
  color cap = dmx_capture_pixel(
    fixture.getJSONArray("capture_pixel").getInt(0),
    fixture.getJSONArray("capture_pixel").getInt(1)
  );
  if (fixture.getInt("hue_offset") > 0) {
    colorMode(HSB, 360, 100, 100);
    float cap_hue = hue(cap) + fixture.getInt("hue_offset");
    cap = color(cap_hue, saturation(cap), brightness(cap));
    colorMode(RGB, 255, 255, 255);
  }
  float mod_fix  = fixture.getFloat("brightness");
  float mod_grp  = group.getFloat("brightness");
  int clamp_low  = fixture.getJSONArray("brightness_clamp").getInt(0);
  int clamp_high = fixture.getJSONArray("brightness_clamp").getInt(1);
  int[] ret = {
    constrain(round(int(red(cap))   * dmx_brightness * mod_fix * mod_grp), clamp_low, clamp_high),
    constrain(round(int(green(cap)) * dmx_brightness * mod_fix * mod_grp), clamp_low, clamp_high),
    constrain(round(int(blue(cap))  * dmx_brightness * mod_fix * mod_grp), clamp_low, clamp_high)
  };
  if (fixture.getBoolean("invert")) {
    ret[0] = 255 - ret[0];
    ret[1] = 255 - ret[1];
    ret[2] = 255 - ret[2];
  }
  switch (dmx_fixed_color_mode) { 
    case 0:
      // Fixed color not enabled - apply smoothing to captured values
      for (int i=0; i<3; i++) {
        ret[i] = dmx_smoothing(
          fixture.getJSONArray("channels").getInt(i),
          ret[i],
          group.getInt("smoothing_frames"),
          group.getFloat("smoothing_bias_positive"),
          group.getFloat("smoothing_bias_negative")    
        );
      }
      break;

    case 1:
      // Fixed color - current custom color
      ret[0] = dmx_fixed_custom_color[0];
      ret[1] = dmx_fixed_custom_color[1];
      ret[2] = dmx_fixed_custom_color[2];
      // Apply smoothing if enabled
      if (dmx_effect_hard) {
        for (int i=0; i<3; i++) {
          ret[i] = dmx_smoothing(
            fixture.getJSONArray("channels").getInt(i),
            ret[i],
            group.getInt("smoothing_frames"),
            group.getFloat("smoothing_bias_positive"),
            group.getFloat("smoothing_bias_negative")    
          );
        }
      }
      break;

    case 2:
      // Fixed color - red
      ret[0] = 255;
      ret[1] = 0;
      ret[2] = 0;
      // Apply smoothing if enabled
      if (dmx_effect_hard) {
        for (int i=0; i<3; i++) {
          ret[i] = dmx_smoothing(
            fixture.getJSONArray("channels").getInt(i),
            ret[i],
            group.getInt("smoothing_frames"),
            group.getFloat("smoothing_bias_positive"),
            group.getFloat("smoothing_bias_negative")    
          );
        }
      }
      break;

    case 3:
      // Fixed color - green
      ret[0] = 0;
      ret[1] = 255;
      ret[2] = 0;
      // Apply smoothing if enabled
      if (dmx_effect_hard) {
        for (int i=0; i<3; i++) {
          ret[i] = dmx_smoothing(
            fixture.getJSONArray("channels").getInt(i),
            ret[i],
            group.getInt("smoothing_frames"),
            group.getFloat("smoothing_bias_positive"),
            group.getFloat("smoothing_bias_negative")    
          );
        }
      }
      break;
      
    case 4:
      // Fixed color - blue
      ret[0] = 0;
      ret[1] = 0;
      ret[2] = 255;
      // Apply smoothing if enabled
      if (dmx_effect_hard) {
        for (int i=0; i<3; i++) {
          ret[i] = dmx_smoothing(
            fixture.getJSONArray("channels").getInt(i),
            ret[i],
            group.getInt("smoothing_frames"),
            group.getFloat("smoothing_bias_positive"),
            group.getFloat("smoothing_bias_negative")    
          );
        }
      }
      break;
      
    case 5:
      // Fixed color - white
      ret[0] = 255;
      ret[1] = 255;
      ret[2] = 255;
      // Apply smoothing if enabled
      if (dmx_effect_hard) {
        for (int i=0; i<3; i++) {
          ret[i] = dmx_smoothing(
            fixture.getJSONArray("channels").getInt(i),
            ret[i],
            group.getInt("smoothing_frames"),
            group.getFloat("smoothing_bias_positive"),
            group.getFloat("smoothing_bias_negative")    
          );
        }
      }
      break;
      
    case 6:
      // Fixed color - black
      ret[0] = 0;
      ret[1] = 0;
      ret[2] = 0;
      // Apply smoothing if enabled
      if (dmx_effect_hard) {
        for (int i=0; i<3; i++) {
          ret[i] = dmx_smoothing(
            fixture.getJSONArray("channels").getInt(i),
            ret[i],
            group.getInt("smoothing_frames"),
            group.getFloat("smoothing_bias_positive"),
            group.getFloat("smoothing_bias_negative")    
          );
        }
      }
      break;

  }
  return ret;
}

int dmx_fixture_monochrome(JSONObject fixture, JSONObject group) {
  int clamp_low  = fixture.getJSONArray("brightness_clamp").getInt(0);
  int clamp_high = fixture.getJSONArray("brightness_clamp").getInt(1);
  color cap = dmx_capture_pixel(
    fixture.getJSONArray("capture_pixel").getInt(0),
    fixture.getJSONArray("capture_pixel").getInt(1)
  );
  int ret = 0;
  if (fixture.getString("sample_from").equals("rgb")) {
    ret = constrain(round((
      int(red(cap)) +
      int(green(cap)) +
      int(blue(cap))
    ) / 3 * dmx_brightness * fixture.getFloat("brightness") * group.getFloat("brightness")), clamp_low, clamp_high);
  }
  else if (fixture.getString("sample_from").equals("red")) {
    ret = int(red(cap));
  }
  else if (fixture.getString("sample_from").equals("green")) {
    ret = int(green(cap));
  }
  else if (fixture.getString("sample_from").equals("blue")) {
    ret = int(blue(cap));
  }
  ret = dmx_smoothing(
    fixture.getInt("channel"),
    ret,
    group.getInt("smoothing_frames"),
    group.getFloat("smoothing_bias_positive"),
    group.getFloat("smoothing_bias_negative")    
  );
  return ret;
}

int dmx_smoothing(
  int channel,
  int new_value,
  int frames,
  float bias_positive,
  float bias_negative
) {
  int ret  = new_value;
  int avg  = 0;
  int delt = 0;
  if (frames < 1) {
    avg = new_value;
  }
  else {
    // Calculate current average
    for (int i=0; i<frames; i++) {
      avg += dmx_smoothing[channel][i+1];
    }
    avg /= frames;
    ret  = avg;
    
    // Bias new value
    // TODO
    /*delt = new_value - avg;
    if (ret > avg && ret > 0) {
      new_value -= abs(delt) * bias_negative;
    }
    else if (ret < avg && ret > 0) {
      new_value += abs(delt) * bias_positive;
    }*/
    
    // Increment channel placeholder
    if (dmx_smoothing[channel][0] >= frames) {
      dmx_smoothing[channel][0] = 1;
    }
    else {
      dmx_smoothing[channel][0]++;
    }
    
    // Inject new value into smoothing array
    dmx_smoothing[channel][dmx_smoothing[channel][0]] = new_value;
    
    // Return new value
    //println("Smoothing " + channel + " - new value: " + new_value + ", avg:" + avg + ", placeholder: " + dmx_smoothing[channel][0]);
  }
  return ret;
}

int[] dmx_effects(int[] data) {
  if (config.getJSONObject("dmx").getJSONObject("beat_detection").getBoolean("enabled")) {
    // Reset timers
    if (
      (
        // Time exceeds timer slot zero value
        (
          dmx_effect_timer[0] > 0 &&
          millis() >= dmx_effect_timer[0]
        ) ||
        // Beat counter exceeds counter slot zero value
        (
          dmx_effect_counter[0] > 0 &&
          beat_count >= dmx_effect_counter[0]
        )
      ) &&
      dmx_effect_num > -1
    ) {
      println(" - Ending effect: " + dmx_effect_num);
      dmx_effect_num = -1;
    }
    
    // Check beat count
    if (
      beat_count % config.getJSONObject("dmx").getJSONObject("beat_detection").getInt("trigger_every") == 0 &&
      beat_count != beat_pixel_last_triggered &&
      dmx_effect_num < 0
    ) {
      if (random(1) < config.getJSONObject("dmx").getJSONObject("beat_detection").getInt("trigger_chance")) {
        println(" - Beat effect on beat: " + beat_count);
        beat_pixel_last_triggered = beat_count;
        
        // Start effect
        dmx_effect_num = floor(random(dmx_effect_count));
        
        // Manually force effect for testing
        if (dmx_effect_force > -1) {
          dmx_effect_num = dmx_effect_force;
        }
        
        println(" - Starting effect: " + dmx_effect_num);
        dmx_effect_init = true;
        for (int i=0; i<4; i++) {
          dmx_effect_counter[i] = 0;
        }
        
      }
    }
    
    // Apply gamma map
    for (int i=0; i<255; i++) {
      data[i] = iGammaMap[constrain(data[i], 0, 255)];
    }
    
    // Render effects
      if (dmx_effect_enabled) {
      switch(dmx_effect_num) {        
        case 0:
          // Invert all channels
          if (dmx_effect_init) {
            dmx_effect_init = false;
            dmx_effect_counter[0] = beat_count + 2;
          }
          for (int i=0; i<255; i++) {
            data[i] = 255 - data[i];
          }
          break;
          
        case 1:
          // On-beat invert
          // counter[1] = current beat
          // counter[2] = invert bit
          if (dmx_effect_init) {
            dmx_effect_init = false;
            dmx_effect_counter[0] = beat_count + 8;
          }
          if (dmx_effect_counter[1] < beat_count) {
            dmx_effect_counter[1] = beat_count;
            if (dmx_effect_counter[2] == 0) {
              dmx_effect_counter[2] = 1;
            }
            else {
              dmx_effect_counter[2] = 0;
            }
          }
          if (dmx_effect_counter[2] == 0) {
            for (int i=0; i<255; i++) {
              data[i] = 255 - data[i];
            }
          }
          break;
  
        case 2:
          // On-beat dim
          // counter[1] = current beat
          // counter[2] = invert bit
          if (dmx_effect_init) {
            dmx_effect_init = false;
            dmx_effect_counter[0] = beat_count + 8;
          }
          if (dmx_effect_counter[1] < beat_count) {
            dmx_effect_counter[1] = beat_count;
            if (dmx_effect_counter[2] == 0) {
              dmx_effect_counter[2] = 1;
            }
            else {
              dmx_effect_counter[2] = 0;
            }
          }
          if (dmx_effect_counter[2] == 0) {
            for (int i=0; i<255; i++) {
              data[i] = round(data[i] * 0.5);
            }
          }
          break;
          
        case 3:
          // On-beat fade
          // counter[1] = current beat
          // counter[2] = dim ammount
          float per_frame_dim = 0.02;
          if (dmx_effect_init) {
            dmx_effect_init = false;
            dmx_effect_counter[0] = beat_count + 8;
          }
          if (dmx_effect_counter[1] < beat_count) {
            dmx_effect_counter[1] = beat_count + 1;
            dmx_effect_counter[2] = 0;
          }
          dmx_effect_counter[2] += per_frame_dim;
          for (int i=0; i<255; i++) {
            data[i] = round(data[i] * (1 - dmx_effect_counter[2]));
          }
          break;
          
        case 4:
          // On-beat blank 50% fixtures
          // counter[1] = current beat
          // counter[2] = fixture number
          // counter[3] = bit toggle
          cur_fixture = 0;
          if (dmx_effect_init) {
            dmx_effect_init = false;
            dmx_effect_counter[0] = beat_count + 8;
          }
          
          // Detect beat
          if (dmx_effect_counter[1] < beat_count) {
            dmx_effect_counter[1] = beat_count;
            dmx_effect_counter[2]++;
          }
          
          // Walk fixtures
          for (int g=0; g<dmx_groups.size(); g++) {
            cur_fixture = int(dmx_effect_counter[2]);
            group_fixtures = dmx_groups.getJSONObject(g).getJSONArray("fixtures");
            for (int f=0; f<group_fixtures.size(); f++) {
              fixture = group_fixtures.getJSONObject(f);
  
              if (cur_fixture % 2 == 0) {
                if (fixture.getString("type").equals("rgb")) {
                  data[fixture.getJSONArray("channels").getInt(0)] = 0;
                  data[fixture.getJSONArray("channels").getInt(1)] = 0;
                  data[fixture.getJSONArray("channels").getInt(2)] = 0;
                }
                else if (fixture.getString("type").equals("monochrome")) {
                  data[fixture.getInt("channel")] = 0;
                }
              }
  
              cur_fixture++;
            }
          }
          break;
          
        case 5:
          // Fixture sweep, increasing
          // timer[1] = timeout
          // counter[1] = fixture start counter
          // counter[2] = speed
          
          if (dmx_effect_init) {
            dmx_effect_init = false;
            dmx_effect_counter[2] = 100; //ms
            dmx_effect_timer[0] = millis() + (dmx_group_max_fixtures * dmx_effect_counter[2]);
            dmx_effect_timer[1] = millis() + dmx_effect_counter[2];
          }
          
          // Increment fixture counter every N s
          if (millis() > dmx_effect_timer[1]) {
            dmx_effect_counter[1]++;
            dmx_effect_timer[1] = millis() + dmx_effect_counter[2];
          }
          
          // Walk fixtures
          for (int g=0; g<dmx_groups.size(); g++) {
            cur_fixture = int(dmx_effect_counter[2]);
            group_fixtures = dmx_groups.getJSONObject(g).getJSONArray("fixtures");
            for (int f=0; f<group_fixtures.size(); f++) {
              fixture = group_fixtures.getJSONObject(f);
  
              if (f < dmx_effect_counter[1]) {
                if (fixture.getString("type").equals("rgb")) {
                  data[fixture.getJSONArray("channels").getInt(0)] = 0;
                  data[fixture.getJSONArray("channels").getInt(1)] = 0;
                  data[fixture.getJSONArray("channels").getInt(2)] = 0;
                }
                else if (fixture.getString("type").equals("monochrome")) {
                  data[fixture.getInt("channel")] = 0;
                }
              }
            }
          }
          break;
          
        case 6:
          // Fixture sweep, inverting
          // timer[1] = timeout
          // counter[1] = fixture start counter
          // counter[2] = speed
          
          if (dmx_effect_init) {
            dmx_effect_init = false;
            dmx_effect_counter[2] = 500; //ms
            dmx_effect_timer[0] = millis() + (dmx_group_max_fixtures * dmx_effect_counter[2]);
            dmx_effect_timer[1] = millis() + dmx_effect_counter[2];
          }
          
          // Increment fixture counter every N s
          if (millis() > dmx_effect_timer[1]) {
            dmx_effect_counter[1]++;
            dmx_effect_timer[1] = millis() + dmx_effect_counter[2];
          }
          
          // Walk fixtures
          for (int g=0; g<dmx_groups.size(); g++) {
            cur_fixture = int(dmx_effect_counter[2]);
            group_fixtures = dmx_groups.getJSONObject(g).getJSONArray("fixtures");
            for (int f=0; f<group_fixtures.size(); f++) {
              fixture = group_fixtures.getJSONObject(group_fixtures.size() - f - 1);
  
              if (f < dmx_effect_counter[1]) {
                if (fixture.getString("type").equals("rgb")) {
                  data[fixture.getJSONArray("channels").getInt(0)] = 255 - data[fixture.getJSONArray("channels").getInt(0)];
                  data[fixture.getJSONArray("channels").getInt(1)] = 255 - data[fixture.getJSONArray("channels").getInt(1)];
                  data[fixture.getJSONArray("channels").getInt(2)] = 255 - data[fixture.getJSONArray("channels").getInt(2)];
                }
                else if (fixture.getString("type").equals("monochrome")) {
                  data[fixture.getInt("channel")] = 255 - data[fixture.getInt("channel")];
                }
              }
            }
          }
          break;
          
        case 7:
          // Fixture sweep, cylon
          // timer[1] = timeout
          // counter[1] = fixture start counter
          // counter[2] = direction
          // counter[3] = speed
          
          
          if (dmx_effect_init) {
            dmx_effect_init = false;
            dmx_effect_counter[2] = 1;
            dmx_effect_counter[3] = 75; //ms
            dmx_effect_timer[0] = millis() + (dmx_group_max_fixtures * dmx_effect_counter[3] * 4);
            dmx_effect_timer[1] = millis() + dmx_effect_counter[3];
          }
          
          // Increment fixture counter every N s
          if (millis() > dmx_effect_timer[1]) {
            if (dmx_effect_counter[2] > 0) {
              dmx_effect_counter[1]++;
            }
            else {
              dmx_effect_counter[1]--;
            }
            
            if (dmx_effect_counter[1] <= 1) {
              dmx_effect_counter[2] = 1;
            }
            else if (dmx_effect_counter[1] >= dmx_group_max_fixtures - 1) {
              dmx_effect_counter[2] = 0;
            }
            
            dmx_effect_timer[1] = millis() + dmx_effect_counter[3];
          }
          
          // Walk fixtures
          for (int g=0; g<dmx_groups.size(); g++) {
            cur_fixture = int(dmx_effect_counter[2]);
            group_fixtures = dmx_groups.getJSONObject(g).getJSONArray("fixtures");
            for (int f=0; f<group_fixtures.size(); f++) {
              fixture = group_fixtures.getJSONObject(group_fixtures.size() - f - 1);
  
              if (
                f < dmx_effect_counter[1] - 1 ||
                f > dmx_effect_counter[1] + 1
              ) {
                if (fixture.getString("type").equals("rgb")) {
                  data[fixture.getJSONArray("channels").getInt(0)] = 0;
                  data[fixture.getJSONArray("channels").getInt(1)] = 0;
                  data[fixture.getJSONArray("channels").getInt(2)] = 0;
                }
                else if (fixture.getString("type").equals("monochrome")) {
                  data[fixture.getInt("channel")] = 255 - data[fixture.getInt("channel")];
                }
              }
            }
          }
          break;
          
      } 
    }
  }
  return data;
}
