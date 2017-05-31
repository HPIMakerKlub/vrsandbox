## Installation on Fedora

You can get a fedora image from [here](http://mirror2.hs-esslingen.de/fedora/linux/releases/25/Workstation/x86_64/iso/Fedora-Workstation-Live-x86_64-25-1.3.iso).
This installation is for Fedora.

Get the software.

```
git clone https://github.com/HPIMakerKlub/vrsandbox.git
cd vrsandbox
git checkout master
```

Then, build the software.

```
./Build-Fedora.sh
```

## Calibration

Do the calibration steps as described by [ARSandbox](https://arsandbox.ucdavis.edu/instructions/calibration-2/).
You can execute them with these commands:

```
./01-calibrate.sh
./02-calibrate.sh
./03-calibrate.sh
```

## Start the Sandbox

You calibrated the sandbox. If you have done this in full-screen mode, you can run he sandbox in full-screen mode.

```
./04-run.sh
```

This program starts the sandbox in full-screen mode.
It also creates restarts the sandbox program if the configuration changes.
