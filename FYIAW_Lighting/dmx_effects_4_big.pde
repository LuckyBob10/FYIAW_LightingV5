int[] dmx_effects_big(int[] data) {
  switch(dmx_effect_num) {
    case 0:
      // Twinkle
      // counter[1] = current beat
      // timer[1] = twinkle timeout
      if (dmx_effect_init) {
        dmx_effect_init = false;
        dmx_effect_counter[0] = beat_count + 8;
        dmx_effect_timer[0] = millis() + dmx_effect_max_beat_time;
      }
      
      // Detect beat
      if (dmx_effect_counter[1] < beat_count) {
        dmx_effect_timer[0] = millis() + dmx_effect_max_beat_time;
        dmx_effect_counter[1] = beat_count;
      }
      
      // Dim channels
      for (int i=0; i<255; i++) {
        data[i] = round(data[i] * .3);
      }
      
      // Walk fixtures
      for (int f=0; f<dmx_universe_size/10; f++) {
        // Pick a random group
        
        group_fixtures = dmx_groups.getJSONObject(
          round(random(dmx_groups.size() - 1)
        )).getJSONArray("fixtures");
        
        // Pick a random fixture
        fixture = group_fixtures.getJSONObject(round(random(group_fixtures.size() - 1)));
        if (fixture.getString("type").equals("rgb")) {
            data[fixture.getJSONArray("channels").getInt(0)] = 255;
            data[fixture.getJSONArray("channels").getInt(1)] = 255;
            data[fixture.getJSONArray("channels").getInt(2)] = 255;
          }
          else if (fixture.getString("type").equals("monochrome")) {
            data[fixture.getInt("channel")] = 255;
          }
      }
      break;
      
    case 1:
      // On-beat brighten
      // counter[1] = current beat
      // counter[2] = offset amount
      float per_frame_bright = .25;
      if (dmx_effect_init) {
        dmx_effect_init = false;
        dmx_effect_counter[0] = beat_count + 8;
        dmx_effect_timer[0] = millis() + dmx_effect_max_beat_time;
      }
      
      // Detect beat
      if (dmx_effect_counter[1] < beat_count) {
        dmx_effect_timer[0] = millis() + dmx_effect_max_beat_time;
        dmx_effect_counter[1] = beat_count + 1;
        dmx_effect_counter[2] = 1;
      }
      
      // Bright channels
      for (int i=0; i<255; i++) {
        data[i] = round(constrain(data[i] * 1.3, 0, 255));
      }
      dmx_effect_counter[2] += per_frame_bright;
      
      println(dmx_effect_counter[2]);
      for (int i=0; i<255; i++) {
        data[i] = round(constrain(data[i] * dmx_effect_counter[2], 0, 255));
      }
      break;
      
    // Half or quarter beat invert
    // Ramp to white / flash
    // Quarter beat group invert
    // Quarter beat fixture invert
    // Sweep white
    // Center burst white
    // Sweep invert
    // Center burst invert
  }
  return data;
}
