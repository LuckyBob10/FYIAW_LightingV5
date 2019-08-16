int[] dmx_test() {
  int[] dmx_data = new int[512];
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
        ret[i] = dmx_smooth(
          fixture.getJSONArray("channels").getInt(i),
          ret[i],
          group.getInt("smoothing_frames"),
          group.getFloat("smoothing_bias_positive"),
          group.getFloat("smoothing_bias_negative")
        );
      }
      break;

    case 1:
      // Fixed color - rainbow
      colorMode(HSB, 360, 255, 255);
      if (millis() > dmx_fixed_rainbow_time + dmx_fixed_rainbow_timeout) {
        dmx_fixed_rainbow_hue++;
        dmx_fixed_rainbow_time = millis();
      }
      if (dmx_fixed_rainbow_hue > 360) {
        dmx_fixed_rainbow_hue = 0;
      }
      dmx_rainbow_color = color(dmx_fixed_rainbow_hue, 255, 255);
      ret[0] = round(red(dmx_rainbow_color) * dmx_brightness);
      ret[1] = round(green(dmx_rainbow_color) * dmx_brightness);
      ret[2] = round(blue(dmx_rainbow_color) * dmx_brightness);
      colorMode(RGB, 255, 255, 255);
      // Apply smoothing if enabled
      if (!dmx_effect_hard) {
        for (int i=0; i<3; i++) {
          ret[i] = dmx_smooth(
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
      ret[0] = round(255 * dmx_brightness);
      ret[1] = 0;
      ret[2] = 0;
      // Apply smoothing if enabled
      if (!dmx_effect_hard) {
        for (int i=0; i<3; i++) {
          ret[i] = dmx_smooth(
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
      ret[1] = round(255 * dmx_brightness);
      ret[2] = 0;
      // Apply smoothing if enabled
      if (!dmx_effect_hard) {
        for (int i=0; i<3; i++) {
          ret[i] = dmx_smooth(
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
      ret[2] = round(255 * dmx_brightness);
      // Apply smoothing if enabled
      if (!dmx_effect_hard) {
        for (int i=0; i<3; i++) {
          ret[i] = dmx_smooth(
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
      ret[0] = round(255 * dmx_brightness);
      ret[1] = round(255 * dmx_brightness);
      ret[2] = round(255 * dmx_brightness);
      // Apply smoothing if enabled
      if (!dmx_effect_hard) {
        for (int i=0; i<3; i++) {
          ret[i] = dmx_smooth(
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
      if (!dmx_effect_hard) {
        for (int i=0; i<3; i++) {
          ret[i] = dmx_smooth(
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
  ret = dmx_smooth(
    fixture.getInt("channel"),
    ret,
    group.getInt("smoothing_frames"),
    group.getFloat("smoothing_bias_positive"),
    group.getFloat("smoothing_bias_negative")
  );
  return ret;
}

int dmx_smooth(
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
    //println("Smoothing " + channel + " - ret: " + ret + " - new value: " + new_value + ", avg:" + avg + ", placeholder: " + dmx_smoothing[channel][0]);
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
      dmx_effect_category = -1;
      dmx_effect_num = -1;
      for (int i=0; i<4; i++) {
        dmx_effect_timer[i]   = 0;
        dmx_effect_counter[i] = 0;
      }
    }

    // Check beat count
    if ((
      beat_count % config.getJSONObject("dmx").getJSONObject("beat_detection").getInt("trigger_every") == 0 &&
      beat_count != beat_pixel_last_triggered &&
      dmx_effect_num < 0 &&
      dmx_effect_enabled
    ) ||
      dmx_force_effect
    ) {
      dmx_force_effect = false;
      if (random(1) < config.getJSONObject("dmx").getJSONObject("beat_detection").getInt("trigger_chance")) {
        beat_pixel_last_triggered = beat_count;

        // Start effect
        // Randomize category as long as it's below dmx_effect_category_count
        if (dmx_effect_category <= dmx_effect_category_count) {
          dmx_effect_category = floor(random(dmx_effect_category_count));
        }
        // Randomize effect inside category
        dmx_effect_num = floor(random(dmx_effect_category_size[dmx_effect_category]));

        // Manually force effect for testing
        if (dmx_effect_force_category > -1) {
          dmx_effect_category = dmx_effect_force_category;
        }
        if (dmx_effect_force_num > -1) {
          dmx_effect_num = dmx_effect_force_num;
        }

        println(" - Starting category " + dmx_effect_category + " effect " + dmx_effect_num + " on beat #" + beat_count);
        dmx_effect_init = true;
        for (int i=0; i<4; i++) {
          dmx_effect_counter[i] = 0;
        }

      }
    }

    // Apply gamma ramp to all DMX channels
    data = dmx_gamma(data);

    // Render effects
    if (dmx_effect_num > -1) {
      switch(dmx_effect_category) {
        case 0:
          // Basic effects
          data = dmx_effects_basic(data);
          break;

        case 1:
          // Fixture effects
          data = dmx_effects_fixtures(data);
          break;

        case 2:
          // Group effects
          data = dmx_effects_groups(data);
          break;

        case 3:
          // Overlay effects
          data = dmx_effects_overlay(data);
          break;

        case 4:
          // Big red button effects
          data = dmx_effects_big(data);
          break;
      }
    }
  }
  return data;
}

int[] dmx_gamma(int[] data) {
    for (int i=0; i<255; i++) {
      data[i] = iGammaMap[constrain(data[i], 0, 255)];
    }
  return data;
}
