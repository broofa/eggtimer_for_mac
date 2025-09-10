CWD=$(dirname "$0")

avrdude -C $CWD/files/avrdude.conf \
  -v -v \
  -p m328p \
  -c arduino \
  -P /dev/tty.*serial* \
  -b 115200 \
  -D \
  -U flash:w:$CWD/eggfinder_lcd_2_05a/Eggfinder_LCD_2_05A.hex:i
