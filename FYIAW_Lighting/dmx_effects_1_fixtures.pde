int[] dmx_effects_fixtures(int[] data) {
  switch(dmx_effect_num) {
    case 0:
      // On-beat blank half of fixtures
      // counter[1] = current beat
      // counter[2] = fixture number
      // counter[3] = bit toggle
      cur_fixture = 0;
      if (dmx_effect_init) {
        dmx_effect_init = false;
        dmx_effect_counter[0] = beat_count + 8;
        dmx_effect_timer[0] = millis() + dmx_effect_max_beat_time;
      }
      
      // Detect beat
      if (dmx_effect_counter[1] < beat_count) {
        dmx_effect_timer[0] = millis() + dmx_effect_max_beat_time;
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
      

  }
  return data;
}
