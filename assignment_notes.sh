#!/bin/bash

# setup build environment based on poky submodule
source poky/oe-init-build-env

# build minimal poky image
# takes a few hours
bitbake core-image-minimal

## adding a yocto layer
source poky/oe-init-build-env
bitbake-layers create-layer ../../meta-aesd
bitbake-layers add-layer ../../meta-aesd
# (already done)
