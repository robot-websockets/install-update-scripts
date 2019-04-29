# How to install on a Raspberry Pi

You will need to have git installed on the both Rpi's, if it is not already there type:

```bash
apt-get install git
```

## Install on two Rpi's

now clone this repo to both pi's in the home folder

```git
git clone https://github.com/robot-websockets/install-update-scripts.git
cd install-update-scripts
```

### Trainbot 1

Run the command:

```bash
bash create-trainbot-1.sh
```

### Trainbot 2

Run the command:

```bash
bash create-trainbot-2.sh
```

## Install on Single Rpi

Run the command:

```bash
bash single-pi/create-on-single-pi.sh
```

## Updating the code:

This is just like installing the code, but now use the update file instead.

Open the install-update-scripts folder in your home folder.

```bash
cd install-update-scripts
```

Run the command:

```bash
bash update-trainbot-1.sh
```

or

```bash
bash update-trainbot-2.sh
```

or 

```bash
bash single-pi/update-on-single-pi.sh
```