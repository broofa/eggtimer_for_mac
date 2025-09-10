# EggTimer TRS TTY Configuration setup

Instructions for establishing a TTY terminal connection to an EggTimer TRS (b4).

* Plug USB-serial cable into TRS
* *Before* powering on TRS, In Terminal.app or iTerm.app:

```bash
screen `ls /dev/tty.*serial*` 9600
```

(Terminal screen will be blank)

* Power on TRS
  * TRS will "slow" beep and red light on RF board will flash (~ once/sec) for 45
  seconds
  * After this, the programming screen should appear (https://i.imgur.com/QR6LOc4.png)

> [!IMPORTANT]
> Hit ENTER a couple times to tell TRS you're in programming mode.  TRS should stop beeping, and then only beep when you hit a key (causes screen to refresh)

> [!IMPORTANT]
> If TRS starts beeping ~once/second after you've entered programming mode, it means it's gone into flight mode and you'll need to start over. (This seemed to happen pretty regularly for me.  I'm not sure why.)

* "Save" by hitting <ESC>
  * screen says "Programming OK (https://i.imgur.com/dXJTkZV.png)

> [!IMPORTANT]
> To exit `screen`, make sure you hit `CTRL-A CTRL-K`!  Failing to do so (e.g.  CTRL-C'ing, `kill`ing the process, or just closing the bash shell) may leave the serial port in an unusable state (... which will be indicated by the screen command saying '"Sorry, could not find a PTY".)
