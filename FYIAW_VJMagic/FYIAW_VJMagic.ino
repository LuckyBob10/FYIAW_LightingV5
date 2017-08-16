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
  if (button_bigred.update() > 0) {
    if (button_bigred.fell()) {
      button_pressed = true;
      if (keyboard_enabled) {
        Keyboard.press(KEY_SPACE);
      }
      Serial.println("Press Space");
    }
    else {
      if (keyboard_enabled) {
        Keyboard.release(KEY_SPACE);
      }
      Serial.println("Release Space");
    }
  }
  
  if (button_1.update() > 0) {
    if (button_1.fell()) {
      button_pressed = true;
      if (keyboard_enabled) {
        Keyboard.press(KEY_1);
      }
      Serial.println("Press 1");
    }
    else {
      if (keyboard_enabled) {
        Keyboard.release(KEY_1);
      }
      Serial.println("Release 1");
    }
  }
  
  if (button_2.update() > 0) {
    if (button_2.fell()) {
      button_pressed = true;
      if (keyboard_enabled) {
        Keyboard.press(KEY_2);
      }
      Serial.println("Press 2");
    }
    else {
      if (keyboard_enabled) {
        Keyboard.release(KEY_2);
      }
      Serial.println("Release 2");
    }
  }
  
  if (button_3.update() > 0) {
    if (button_3.fell()) {
      button_pressed = true;
      if (keyboard_enabled) {
        Keyboard.press(KEY_3);
      }
      Serial.println("Press 3");
    }
    else {
      if (keyboard_enabled) {
        Keyboard.release(KEY_3);
      }
      Serial.println("Release 3");
    }
  }

  if (button_4.update() > 0) {
    if (button_4.fell()) {
      button_pressed = true;
      if (keyboard_enabled) {
        Keyboard.press(KEY_4);
      }
      Serial.println("Press 4");
    }
    else {
      if (keyboard_enabled) {
        Keyboard.release(KEY_4);
      }
      Serial.println("Release 4");
    }
  }

  if (button_5.update() > 0) {
    if (button_5.fell()) {
      button_pressed = true;
      if (keyboard_enabled) {
        Keyboard.press(KEY_5);
      }
      Serial.println("Press 5");
    }
    else {
      if (keyboard_enabled) {
        Keyboard.release(KEY_5);
      }
      Serial.println("Release 5");
    }
  }

  if (button_6.update() > 0) {
    if (button_6.fell()) {
      button_pressed = true;
      if (keyboard_enabled) {
        Keyboard.press(KEY_6);
      }
      Serial.println("Press 6");
    }
    else {
      if (keyboard_enabled) {
        Keyboard.release(KEY_6);
      }
      Serial.println("Release 6");
    }
  }
  
  if (button_7.update() > 0) {
    if (button_7.fell()) {
      button_pressed = true;
      if (keyboard_enabled) {
        Keyboard.press(KEY_7);
      }
      Serial.println("Press 7");
    }
    else {
      if (keyboard_enabled) {
        Keyboard.release(KEY_7);
      }
      Serial.println("Release 7");
    }
  }
  
  if (button_8.update() > 0) {
    if (button_8.fell()) {
      button_pressed = true;
      if (keyboard_enabled) {
        Keyboard.press(KEY_8);
      }
      Serial.println("Press 8");
    }
    else {
      if (keyboard_enabled) {
        Keyboard.release(KEY_8);
      }
      Serial.println("Release 8");
    }
  }
  
  if (button_9.update() > 0) {
    if (button_9.fell()) {
      button_pressed = true;
      if (keyboard_enabled) {
        Keyboard.press(KEY_9);
      }
      Serial.println("Press 9");
    }
    else {
      if (keyboard_enabled) {
        Keyboard.release(KEY_9);
      }
      Serial.println("Release 9");
    }
  }
  
  if (button_10.update() > 0) {
    if (button_10.fell()) {
      button_pressed = true;
      if (keyboard_enabled) {
        Keyboard.press(KEY_0);
      }
      Serial.println("Press 0");
    }
    else {
      if (keyboard_enabled) {
        Keyboard.release(KEY_0);
      }
      Serial.println("Release 0");
    }
  }
  
  if (button_11.update() > 0) {
    if (button_11.fell()) {
      button_pressed = true;
      if (keyboard_enabled) {
        Keyboard.press(KEY_MINUS);
      }
      Serial.println("Press -");
    }
    else {
      if (keyboard_enabled) {
        Keyboard.release(KEY_MINUS);
      }
      Serial.println("Release -");
    }
  }
  
  if (button_12.update() > 0) {
    if (button_12.fell()) {
      button_pressed = true;
      if (keyboard_enabled) {
        Keyboard.press(KEY_EQUAL);
      }
      Serial.println("Press =");
    }
    else {
      if (keyboard_enabled) {
        Keyboard.release(KEY_EQUAL);
      }
      Serial.println("Release =");
    }
  }

  // Button activity indicator
  if (button_pressed == true) {
    strip_hue += 128;
    button_pressed = false;
  }
}
