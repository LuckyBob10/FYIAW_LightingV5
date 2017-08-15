#define led_pin    23
#define btn_bigred 6
#define btn_1      0
#define btn_2      1
#define btn_3      2
#define btn_4      3
#define btn_5      4
#define btn_6      5
#define btn_7      22
#define btn_8      21
#define btn_9      20
#define btn_10     19
#define btn_11     18
#define btn_12     17

bool
  button_pressed = false
;

uint8_t
  debounce_time       = 10,
  strip_brightness    = 64,
  strip_hue           = 0,
  strip_hue_timeout   = 15,
  strip_blank_timeout = 100,
  strip_framerate     = 1000/60,
  button_pins[] = {
    btn_bigred,
    btn_1,
    btn_2,
    btn_3,
    btn_4,
    btn_5,
    btn_6,
    btn_7,
    btn_8,
    btn_9,
    btn_10,
    btn_11,
    btn_12    
  }
;

int
  button_value
;

elapsedMillis
  led_hue_timer
;

CRGB strip[1];
