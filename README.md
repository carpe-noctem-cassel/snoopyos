# SnoopyOS

SnoopyOS is a customized installation of [buildroot](https://buildroot.org/) that we use for our [BeagleBone Black](https://beagleboard.org/black) boards.

## Building

Here are instructions on how to build SnoopyOS.

If you want to understand how it works in detail take a look at the excellent
[Buildroot user manual](https://buildroot.org/downloads/manual/manual.html).

### Install buildroot

First you have to [download a recent version of buildroot](https://buildroot.org/download.html) and extract it somewhere.

Make sure you have all the
[system requirements](https://buildroot.org/downloads/manual/manual.html#requirement) to compile buildroot satisfied.

On Ubuntu 16.04 you can install them with:

	$ sudo apt-get install build-essential ncurses-base ncurses-bin libncurses5-dev dialog

### Building SnoopyOS

SnoopyOS is built as an [external buildroot dir](https://buildroot.org/downloads/manual/manual.html#outside-br-custom).
So after download this repository you first have to configure it like so:

```sh
$ cd buildroot # cd into your downloaded buildroot installation
$ make BR2_EXTERNAL=PATH_TO_SNOOPYOS_REPOSITORY snoopy_bbb_defconfig
$ make
```

The upper commands build SnoopyOS for the beaglebone black.
If you want to alternatively build the system for qemu, for example
to run it without the hardware you can choose another defconfig:

```sh
$ cd buildroot # cd into your downloaded buildroot installation
$ make BR2_EXTERNAL=PATH_TO_SNOOPYOS_REPOSITORY snoopy_qemu_defconfig
$ make
```

### Uploading to the Beagleboard

Follows...
