#!/bin/bash
#FEZ handles the Xbox 360 controller on its own, but we have to pretend we're xpad or it won't quite work.
#I added mouse functionality to the second config, and caused the toggle button, guide, to open the steam overlay.
sudo xboxdrv --silent --trigger-as-button --dpad-as-button --mimic-xpad --ui-buttonmap guide=macro:so.macro --next-config --mouse --ui-buttonmap guide=macro:so.macro
