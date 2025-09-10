echo on
cd %AVR32_HOME%\bin
avrdude -Cavrdude.conf  -v -v -pm328p -carduino -P\\.\COM2 -b115200 -D -Uflash:w:c:\eggtimer\eggtimer_trs_2_14c.hex:i
cd \eggtimer


