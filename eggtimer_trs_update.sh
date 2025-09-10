CWD=$(dirname "$0")

avrdude -C $CWD/files/avrdude.conf \
  -v -v \
  -p m328p \
  -c arduino \
  -P /dev/tty.*serial* \
  -b 115200 \
  -D \
  -U flash:w:$CWD/eggtimer_TRS_2_14c/eggtimer_TRS_2_14c.hex:i
