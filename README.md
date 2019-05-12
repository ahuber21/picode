# picode - All code that is run on the Saufhaengerle Raspberry Pi

Code here is set up for python version 3.X and all required packages are defined in `requirements.txt`.

To set up the RPi do

```bash
# first make sure you installed python3.X + some dev libs
sudo apt-get install python3 python3-dev libtiff5-dev zlib1g-dev libfreetype6-dev liblcms2-dev libwebp-dev libharfbuzz-dev libfribidi-dev tcl8.6-dev tk8.6-dev python-tk git python3-venv emacs
```

(most of the requirements are for `Pillow` which is required by pyfingerprint)

Now set up the virtual environment

```bash
git clone --recursive https://gitlab.com/saufhaengerle/picode
cd picode
python3.7 -m venv venv
source venv/bin/activate
pip install -r requirements.txt
```

If you want to set up the repository for development, **additional steps** are required. After completing the steps above do

```bash
pre-commit install
```

## Contents

### switcher

A webapp that can switch attached relays. Usually used for switching lights.

Notes:

* Bootstrap version 2.3.2
* Bootstrap toggle from http://www.bootstraptoggle.com/

### zapfhahn

All the code that is required to run the Zapfhahn.

## Install pyfingerprint

```bash
# dirty hack because pip install does not actually install the package, only sets the context
mkdir venv/lib/python3.5/site-packages/pyfingerprint
cp src/zapfhahn/hardware/pyfingerprint/src/files/pyfingerprint/pyfingerprint.py venv/lib/python3.5/site-packages/pyfingerprint
```

In order to use the Raspberry Pi's serial port I had to make change that is explained [here](https://raspberrypi.stackexchange.com/questions/45570/how-do-i-make-serial-work-on-the-raspberry-pi3-pi3b-pizerow/45571#45571). More informatio$

Do

```bash
sudo emacs -nw /boot/config.txt
```

and add the lines

```
enable_uart=1
dtoverlay=pi3-disable-bt
```

Further /boot/cmdline.txt needs some editing to prevent the console from using the UART

```bash
sudo emacs -nw /boot/cmdline.txt
```

and remove the following entry

```
console=serial0,115200
```

It is also necessary to disable the system service that initialises the modem so it doesn't use the UART: `sudo systemctl disable hciuart`.

After rebooting, this will make the uart pins available as `/dev/ttyAMA0` or better `/dev/serial0`.

To test the serial port, shortcut Tx and RX on the pi and run the following code

```bash
minicom -b 57600 -o -D /dev/serial0
```

If everything is working correctly the terminal will echo every keystroke.