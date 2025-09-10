# EggTimer For Mac

This project provides notes and utilities for working with EggTimer TRS and EggFinder GPS receivers on Mac

## Programming the EggTimer TRS

Want to connect to your TRS from your Mac?  See [Serial_Connection.md](.Serial_Connection.md)

## Firmware Updates

Firmware updates that use the `avrdude` utility (TRS and EggFinder devices) *can* be updated from Mac.  The process is much the same as on Windows, but with a few minor changes.

Before starting, please familiarize yourself with the Windows process:
* [Updating the EggTimer TRS (Windows)](./files/How-to-Update-the-Flash-on-Your-Eggtimer-TRS.pdf)
* [Updating the EggFinder](./files/Eggfinder-LCD-Flash-Update-Instructions-1.pdf)

To update from your Mac make the following changes to the above process(es):

1. No need to download the firmware ZIP files from EggTimer.  They're included in this repo.
2. Install the MacOS version of `avrdude`. This can with [MacPorts](https://ports.macports.org/) or [Homebrew](https://brew.sh/).

```
 `brew install avrdude`
 ```

FWIW, at the time of this writing, this installed `avrdude` 8.1.

3. Instead of running the Windows *.bat to flash your device, use one of the following scripts in this project:
  * [eggfinder_update.sh](./eggfinder_update.sh)
  * [eggtimer_trs_update.sh](./eggtimer_trs_update.sh)
