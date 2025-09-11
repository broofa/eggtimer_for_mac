# EggTimer TRS TTY Configuration setup

Instructions for establishing a TTY terminal connection to an EggTimer TRS (b4).
* Connect USB-serial from your Mac to the TRS
* *Before* powering on TRS, open Terminal.app or iTerm.app and verify your Mac recognizes the cable:

```bash
ls /dev/tty.*serial*
```

You should see something like this: 

<img width="207" height="71" alt="CleanShot 2025-09-11 at 13 47 40" src="https://github.com/user-attachments/assets/befe0063-9c96-4602-9090-27300e24632f" />

* Next, open a TTY session on the serial port:

```bash
screen `ls /dev/tty.*serial*` 9600
```

(Terminal screen will be blank)

> [!IMPORTANT]
> When you're ready to exit the `screen` command, type `CTRL-A` `CTRL-K`!  Failing to do this (e.g.  `CTRL-C`'ing, `kill`ing the process, or just closing the bash shell) may leave the serial port in an unusable state.  When this happens, the screen command will say '"Sorry, could not find a PTY" the next time you try to run it.  The only way I've found to get out of this state is to reboot the computer.


* Power on the TRS

The TRS will "slow" beep and the red light on the RF board will flash ~once/sec for 45
seconds.  After this, the programming screen should appear:

<img src="https://i.imgur.com/QR6LOc4.png" width="300" />

  * Hit `ENTER` to let the TRS know an input device is connected.  The TRS should stop beeping, and then only beep when you hit a key (which causes the screen to refresh.)

> [!NOTE]
> If TRS starts beeping ~once/second after you've entered programming mode, it means it's gone into flight mode and you'll need to start over. (This seemed to happen pretty regularly for me.  I'm not sure why.)

If / when you make changes, you can "Save" by hitting `<ESC>`.  You should see a "Programming OK" message confirming your changes have been saved.

<img src="https://i.imgur.com/dXJTkZV.png" width="300" />

----

Bonus Content - A video walkthrough of all of the above, woot...!

[![youtube video](http://img.youtube.com/vi/3_VwUyIn4KM/0.jpg)](http://www.youtube.com/watch?v=3_VwUyIn4KM "Video Title")


