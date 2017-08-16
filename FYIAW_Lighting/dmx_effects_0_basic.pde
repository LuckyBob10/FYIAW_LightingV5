int[] dmx_effects_basic(int[] data) {
  switch(dmx_effect_num) {
    case 0:
      // Invert all channels for two beats
      if (dmx_effect_init) {
        dmx_effect_init = false;
        dmx_effect_counter[0] = beat_count + 2;
        dmx_effect_timer[0] = millis() + dmx_effect_max_beat_time;
      }
      
      // Detect beat
      if (dmx_effect_counter[1] < beat_count) {
        dmx_effect_timer[0] = millis() + dmx_effect_max_beat_time;
      }
      
      for (int i=0; i<255; i++) {
        data[i] = 255 - data[i];
      }
      break;
      
    case 1:
      // On-beat invert for eight beats
      // counter[1] = current beat
      // counter[2] = invert bit
      if (dmx_effect_init) {
        dmx_effect_init = false;
        dmx_effect_counter[0] = beat_count + 8;
        dmx_effect_timer[0] = millis() + dmx_effect_max_beat_time;
      }
      
      // Detect beat
      if (dmx_effect_counter[1] < beat_count) {
        dmx_effect_timer[0] = millis() + dmx_effect_max_beat_time;
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
      // On-beat fade
      // counter[1] = current beat
      // counter[2] = offset amount
      float per_frame_dim = -0.03;
      if (dmx_effect_init) {
        dmx_effect_init = false;
        dmx_effect_counter[0] = beat_count + 8;
        dmx_effect_timer[0] = millis() + dmx_effect_max_beat_time;
      }
      
      // Detect beat
      if (dmx_effect_counter[1] < beat_count) {
        dmx_effect_timer[0] = millis() + dmx_effect_max_beat_time;
        dmx_effect_counter[1] = beat_count + 1;
        dmx_effect_counter[2] = 0;
      }
      dmx_effect_counter[2] += per_frame_dim;
      for (int i=0; i<255; i++) {
        data[i] = round(data[i] * dmx_effect_counter[2]);
      }
      break;
        
  }
  return data;
}
