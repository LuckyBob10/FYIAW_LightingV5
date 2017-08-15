int
  window_size_x                 = 0,
  window_size_y                 = 0,
  window_size_offset_x          = 0,
  window_size_offset_y          = 0,
  window_size_dmx_group_height  = 32,
  window_size_dmx_fixture_width = 16,
  dmx_group_max_fixtures        = 0,
  dmx_fixture_count             = 0,
  dmx_universe_size             = 0,
  dmx_effect_num                = -1,
  dmx_effect_count              = 7,
  dmx_effect_force              = -1,
  dmx_fixed_color_mode          = 0,
  initial_position_counter      = 0,
  beat_count                    = 0,
  beat_pixel_val                = 0,
  beat_pixel_last               = 255,
  beat_pixel_x                  = 0,
  beat_pixel_y                  = 0,
  beat_pixel_last_triggered     = 0,
  cur_fixture                   = 0
;

float
  dmx_brightness      = 1,
  dmx_brightness_step = .005,
  dmx_brightness_last = 1
;

int[]
  dmx_fixed_cur_color    = {0, 0, 0},
  dmx_fixed_custom_color = {192, 192, 192}
;

float[]
  dmx_effect_counter = {0, 0, 0, 0},
  dmx_effect_timer   = {0, 0, 0, 0}
;

int[][]
  dmx_smoothing = new int[255][600]
;

boolean
  led_board_enabled         = true,
  dmx_enabled               = true,
  dmx_test                  = false,
  dmx_fixed_color           = false,
  dmx_effect_init           = false,
  dmx_effect_hard = true,
  dmx_effect_enabled        = true
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

int iGammaMap[] = {
    0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
    0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  1,  1,  1,  1,
    1,  1,  1,  1,  1,  1,  1,  1,  1,  2,  2,  2,  2,  2,  2,  2,
    2,  3,  3,  3,  3,  3,  3,  3,  4,  4,  4,  4,  4,  5,  5,  5,
    5,  6,  6,  6,  6,  7,  7,  7,  7,  8,  8,  8,  9,  9,  9, 10,
   10, 10, 11, 11, 11, 12, 12, 13, 13, 13, 14, 14, 15, 15, 16, 16,
   17, 17, 18, 18, 19, 19, 20, 20, 21, 21, 22, 22, 23, 24, 24, 25,
   25, 26, 27, 27, 28, 29, 29, 30, 31, 32, 32, 33, 34, 35, 35, 36,
   37, 38, 39, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 50,
   51, 52, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 66, 67, 68,
   69, 70, 72, 73, 74, 75, 77, 78, 79, 81, 82, 83, 85, 86, 87, 89,
   90, 92, 93, 95, 96, 98, 99,101,102,104,105,107,109,110,112,114,
  115,117,119,120,122,124,126,127,129,131,133,135,137,138,140,142,
  144,146,148,150,152,154,156,158,160,162,164,167,169,171,173,175,
  177,180,182,184,186,189,191,193,196,198,200,203,205,208,210,213,
  215,218,220,223,225,228,231,233,236,239,241,244,247,249,252,255
};
