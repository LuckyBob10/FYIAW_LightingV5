#include "Bounce2.h"
#include "FastLED.h"
#include "vars.h"

// Init buttons
Bounce button_bigred = Bounce(btn_bigred, debounce_time);
Bounce button_1 = Bounce();
Bounce button_2 = Bounce();
Bounce button_3 = Bounce();
Bounce button_4 = Bounce();
Bounce button_5 = Bounce();
Bounce button_6 = Bounce();
Bounce button_7 = Bounce();
Bounce button_8 = Bounce();
Bounce button_9 = Bounce();
Bounce button_10 = Bounce();
Bounce button_11 = Bounce();
Bounce button_12 = Bounce();

void setup() {
  // Debug
  Serial.begin(9600);
  Serial.println("Starting VJMagic...");

  // Init pins
  pinMode(led_pin, OUTPUT);
  for (uint8_t i=0; i<(sizeof(button_pins)/sizeof(uint8_t)); i++) {
    pinMode(button_pins[i], INPUT_PULLUP);
  }
  button_bigred.attach(btn_bigred);
  button_bigred.interval(debounce_time);
  button_1.attach(btn_1);
  button_1.interval(debounce_time);
  button_2.attach(btn_2);
  button_2.interval(debounce_time);
  button_3.attach(btn_3);
  button_3.interval(debounce_time);
  button_4.attach(btn_4);
  button_4.interval(debounce_time);
  button_5.attach(btn_5);
  button_5.interval(debounce_time);
  button_6.attach(btn_6);
  button_6.interval(debounce_time);
  button_7.attach(btn_7);
  button_7.interval(debounce_time);
  button_8.attach(btn_8);
  button_8.interval(debounce_time);
  button_9.attach(btn_9);
  button_9.interval(debounce_time);
  button_10.attach(btn_10);
  button_10.interval(debounce_time);
  button_11.attach(btn_11);
  button_11.interval(debounce_time);
  button_12.attach(btn_12);
  button_12.interval(debounce_time);
  

  // Init LED
  FastLED.addLeds<WS2811, led_pin, GRB>(strip, 1);
  FastLED.setBrightness(strip_brightness);  
}

void loop() {
  // Update strip
  if (led_hue_timer > strip_hue_timeout) {
    strip_hue++;
    strip[0] = CHSV(strip_hue, 255, 255);
    FastLED.show();
    led_hue_timer = 0;
  }

  // Update buttons
  button_bigred.update();
  if (button_bigred.read()) {
    Serial.println("Button pressed: BigRed");
    button_pressed = true;
    Keyboard.set_key1(KEY_F1);
  }
  
  button_1.update();
  if (button_1.read()) {
    Serial.println("Button pressed: Next effect");
    button_pressed = true;
    Keyboard.set_key1(KEY_END);
  }
  
  button_2.update();
  if (button_2.read()) {
    Serial.println("Button pressed: Previous effect");
    button_pressed = true;
    Keyboard.set_key1(KEY_HOME);
  }
  
  button_3.update();
  if (button_3.read()) {
    Serial.println("Button pressed: Red");
    button_pressed = true;
    Keyboard.set_key1(KEY_F6);
  }
  
  button_4.update();
  if (button_4.read()) {
    Serial.println("Button pressed: Black");
    button_pressed = true;
    Keyboard.set_key1(KEY_F9);
  }
  
  button_5.update();
  if (button_5.read()) {
    Serial.println("Button pressed: White");
    button_pressed = true;
    Keyboard.set_key1(KEY_F8);
  }
  
  button_6.update();
  if (button_6.read()) {
    Serial.println("Button pressed: Green");
    button_pressed = true;
    Keyboard.set_key1(KEY_F6);
  }
  
  button_7.update();
  if (button_7.read()) {
    Serial.println("Button pressed: Blue");
    button_pressed = true;
    Keyboard.set_key1(KEY_F7);
  }
  
  button_8.update();
  if (button_8.read()) {
    Serial.println("Button pressed: Motha fuckin' RAINBOW!");
    button_pressed = true;
    Keyboard.set_key1(KEY_F10);
  }
  
  button_9.update();
  if (button_9.read()) {
    Serial.println("Button pressed: Pause effects");
    button_pressed = true;
    Keyboard.set_key1(KEY_F2);
  }
  
  button_10.update();
  button_value = button_10.read();
  if (button_value == HIGH) {
    Serial.println("Button pressed: Effects hard vs soft");
    button_pressed = true;
    Keyboard.set_key1(KEY_F12);
  }
  
  button_11.update();
  if (button_11.read()) {
    Serial.println("Button pressed: Brightness down");
    button_pressed = true;
    Keyboard.set_key1(KEY_PAGE_DOWN);
  }
  
  button_12.update();
  if (button_12.read()) {
    Serial.println("Button pressed: Brightness up");
    button_pressed = true;
    Keyboard.set_key1(KEY_PAGE_UP);
  }

  // Handle buttons
  if (button_pressed) {
    strip_hue += 128;
    button_pressed = false;

    Keyboard.send_now();
  }
}
