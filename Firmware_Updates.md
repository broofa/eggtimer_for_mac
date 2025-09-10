# EggTimer Firmware Updates for MacOS

This project provides instructions  for upgrading firmware on EggTimer EggTimer TRS and EggFinder GPS receivers.

The process is much the same as on Windows, but with a few minor variations.  So before starting the process, please familiarize yourself with the Windows process:
* [Updating the EggTimer TRS (Windows)](./files/How-to-Update-the-Flash-on-Your-Eggtimer-TRS.pdf)
* [Updating the EggFinder](./files/Eggfinder-LCD-Flash-Update-Instructions-1.pdf)

The main differences between Mac and Windows are as follows:

1. No need to download the firmware ZIP files from EggTimer.  They're included in this repo.
2. You'll need to install the MacOS version of `avrdude`. This can be done via from the command line with [Homebrew](https://brew.sh/).

```
 `brew install avrdude`
 ```

3. Instead of running the Windows *.bat file that EggTimer provides in their firmware .zip file, use one of the following scripts in this project:
  * [eggfinder_update.sh](./eggfinder_update.sh)
  * [eggtimer_trs_update.sh](./eggtimer_trs_update.sh)

