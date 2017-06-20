F#&k You' I'm a Wizard Lighting Backend v5
==========================================

Concepts
--------
- Processing sketch is used strictly to run lighting; no design takes place in Processing
- Python FYIAW_Lighting_Designer.py handles all lighting design and outputs to JSON
- Processing sketch user controlled inputs:
	- Light output on/off
	- Select config JSON (?)
	- Reload config JSON
	- Overall brightness
	- DMX test
- Incorporate beat effects
- DMX lighting groups
- JSON config follows GUI layout
- All brightness controls also consolidated to one brightness GUI page
- DMX fixture mapping done with clickable GUI


JSON Config Example
-------------------
{
  "general": {
		"capture_size_x": 480,
		"capture_size_y": 200,
		"initial_x": 4,
		"initial_y": 266
	},
	"led_board": {
		"enabled": "True",
		"opc_address": "127.0.0.1",
		"opc_port": 7890,
		"pixels_x": 60,
		"pixels_y": 16,
		"spacing_x": 1,
		"spacing_y": 1.5,
		
	},
	"dmx": {
		"beat_detection": {
			"enabled": "True"
			"trigger_every": 16,
			"trigger_weight": .25,
		},
		"dmx_groups": {
			1: {
				"smoothing": 10, (frames)
				"brightness": 1,
				"beat_effects": "False",
				"rgb_fixtures": {
					1: {
						"name": "Flood #1",
						"brightness": 1,
						"brightness_clamp": [0, 255],
						"hue_offset": 0,
						"invert": "False",
						"channels": [5,6,7],
						"capture_pixel": [125, 63]
				},
				"monochrome_fixtures": {
					1: {
						"name": "Flood #1",
						"brightness": 1,
						"brightness_clamp": [0, 255],
						"hue_offset": 0,
						"invert": "False",
						"channel": 10,
						"capture_pixel": [125, 63]
						"sample_from": "red"
					}
				},
				"static_fixtures": {
					1: {
						"name": "Moving Head 1 - auto program mode",
						"channel": 25,
						"value": 127
						
					}
				}
			},
		},
		"consumed_addresses": [
			1,2,[...]n
		]
	}
}