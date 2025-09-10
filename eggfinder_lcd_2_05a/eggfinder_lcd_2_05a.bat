echo on
cd %AVR32_HOME%\bin
avrdude -Cavrdude.conf  -v -v -pm328p -carduino -P\\.\COM2 -b115200 -D -Uflash:w:c:\eggtimer\eggfinder_lcd_2_05a.hex:i
cd \eggtimer


