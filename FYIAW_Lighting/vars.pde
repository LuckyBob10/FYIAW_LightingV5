int
  window_size_x                 = 0,
  window_size_y                 = 0,
  window_size_offset_x          = 0,
  window_size_offset_y          = 100,
  window_size_dmx_group_height  = 32,
  window_size_dmx_fixture_width = 16,
  dmx_group_max_fixtures        = 0,
  dmx_universe_size             = 0,
  initial_position_counter      = 0,
  beat_count                    = 0,
  beat_pixel_val                = 0,
  beat_pixel_last               = 255,
  beat_pixel_x                  = 0,
  beat_pixel_y                  = 0,
  beat_pixel_last_triggered     = 0,
  beat_num_effects              = 1
;

int[]
  dmx_effect_counter = {0, 0, 0, 0},
  dmx_effect_timer   = {0, 0, 0, 0}
;

int[][]
  dmx_smoothing = new int[255][600]
;

boolean
  led_board_enabled = true,
  dmx_enabled       = true,
  dmx_test          = false,
  dmx_fixed_color   = false,
  dmx_effect_active = false
;

String
  fixture_type
;

BufferedImage desktop;
OPC           opc;
PImage        screen_shot;

JSONArray 
  dmx_groups,
  group_fixtures,
  capture_pixel
;

JSONObject
  config,
  fixture,
  group
;
