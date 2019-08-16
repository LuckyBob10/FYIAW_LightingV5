int[] dmx_effects_overlay(int[] data) {
  switch(dmx_effect_num) {
    case 0:
      // Sweep horiz black
      // counter[1] = current frame number
      // counter[2] = number of frames in image animation
      // counter[3] = blend mode int
      // timer[1]   = frame delay
      
      if (dmx_effect_init) {
        dmx_effect_init         = false;
        overlay_animation_count = overlay_images_config.getJSONObject("basic").getInt("animation_count");
        overlay_object          = overlay_images_config.getJSONObject("basic").getJSONArray("animations").getJSONObject(round(random(0, overlay_animation_count - 1)));
        println(" - Loading images for: " + overlay_object.getString("name"));
        overlay_image           = loadImage(
          overlay_images_config.getJSONObject("basic").getString("path") +
          overlay_object.getJSONArray("images").getString(0)
        );
        
        dmx_effect_counter[2] = overlay_object.getJSONArray("images").size();
        dmx_effect_timer[1]   = millis() + overlay_object.getInt("frame_delay");
        
        String blend_mode = overlay_object.getString("blend_mode");
        if (blend_mode.equals("blend")) {
          dmx_effect_counter[3] = BLEND;
        }
        else if (blend_mode.equals("add")) {
          dmx_effect_counter[3] = ADD;
        }
        else if (blend_mode.equals("subtract")) {
          dmx_effect_counter[3] = SUBTRACT;
        }
        else if (blend_mode.equals("darkest")) {
          dmx_effect_counter[3] = DARKEST;
        }
        else if (blend_mode.equals("lightest")) {
          dmx_effect_counter[3] = LIGHTEST;
        }
        else if (blend_mode.equals("difference")) {
          dmx_effect_counter[3] = DIFFERENCE;
        }
        else if (blend_mode.equals("exclusion")) {
          dmx_effect_counter[3] = EXCLUSION;
        }
        else if (blend_mode.equals("multiply")) {
          dmx_effect_counter[3] = MULTIPLY;
        }
        else if (blend_mode.equals("screen")) {
          dmx_effect_counter[3] = SCREEN;
        }
        else if (blend_mode.equals("overlay")) {
          dmx_effect_counter[3] = OVERLAY;
        }
        else if (blend_mode.equals("hard_light")) {
          dmx_effect_counter[3] = HARD_LIGHT;
        }
        else if (blend_mode.equals("soft_light")) {
          dmx_effect_counter[3] = SOFT_LIGHT;
        }
        else if (blend_mode.equals("dodge")) {
          dmx_effect_counter[3] = DODGE;
        }
      }
      
      // Get current screen
      //PImage cur_screen = get();
      
      // Blend curent overlay image
      blend(
        overlay_image,
        0,
        0,
        overlay_image.width,
        overlay_image.height,
        0,
        0,
        overlay_image.width,
        overlay_image.height,
        int(dmx_effect_counter[3])
      );
      
      // Increment frame      
      if (millis() > dmx_effect_timer[1]) {
        // Next image if there are still frames
        dmx_effect_counter[1]++;
        if (dmx_effect_counter[1] < dmx_effect_counter[2]) {
          dmx_effect_timer[1] = millis() + overlay_object.getInt("frame_delay");
          overlay_image = loadImage(
            overlay_images_config.getJSONObject("basic").getString("path") +
            overlay_object.getJSONArray("images").getString(int(dmx_effect_counter[1]))
          );
        }
        else {
          // End effect
          dmx_effect_timer[0] = millis() - 1;
        }
      }
      break;
      
      // Walk fixtures and determine if pixels have changed or not
      
      // Restore image
      //image(cur_screen, 0, 0);
  }
  return data;
}
