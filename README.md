# picode - All code that is run on the Saufhaengerle Raspberry Pi

Code here is set up for python version 3.7.2 and all required packages are defined in `requirements.txt`.

To set up the RPi do

```bash
# first make sure you installed python3.7.2
git clone https://gitlab.com/saufhaengerle/picode
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
