# EggTimer TRS TTY Configuration setup

Instructions for establishing a TTY terminal connection to an EggTimer TRS (b4).

* Plug USB-serial cable into the TRS
* *Before* powering on TRS, In Terminal.app or iTerm.app:

```bash
screen `ls /dev/tty.*serial*` 9600
```

(Terminal screen will be blank)

* Power on TRS
  * The TRS will "slow" beep and the red light on the RF board will flash ~once/sec for 45
  seconds.
  * After this, the programming screen should appear:

<img src="https://i.imgur.com/QR6LOc4.png" width="300" />

  * Hit `ENTER` to let the TRS know an input device is connected.  The TRS should stop beeping, and then only beep when you hit a key (whihc causes the screen to refresh.)

> [!NOTE]
> If TRS starts beeping ~once/second after you've entered programming mode, it means it's gone into flight mode and you'll need to start over. (This seemed to happen pretty regularly for me.  I'm not sure why.)

If / when you make changes, you can "Save" by hitting `<ESC>`.  You should see a "Programming OK" message confirming your changes have been saved.

<img src="https://i.imgur.com/dXJTkZV.png" width="300" />

> [!IMPORTANT]
> To exit `screen`, make sure you hit `CTRL-A` `CTRL-K`!  Failing to do so (e.g.  `CTRL-C`'ing, `kill`ing the process, or just closing the bash shell) may leave the serial port in an unusable state (... which will be indicated by the screen command saying '"Sorry, could not find a PTY".)

----

Bonus Content - A video walkthrough of all of the above, woot...!

[![youtube video](http://img.youtube.com/vi/3_VwUyIn4KM/0.jpg)](http://www.youtube.com/watch?v=3_VwUyIn4KM "Video Title")


