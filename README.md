# picode - All code that is run on the Saufhaengerle Raspberry Pi

Code here is set up for python version 3.X and all required packages are defined in `requirements.txt`.

To set up the RPi do

```bash
# first make sure you installed python3.X + some dev libs
sudo apt-get install python3 python3-dev libtiff5-dev zlib1g-dev libfreetype6-dev liblcms2-dev libwebp-dev libharfbuzz-dev libfribidi-dev tcl8.6-dev tk8.6-dev python-tk
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