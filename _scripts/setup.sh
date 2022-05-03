#!/bin/bash

__dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source $__dir/_base.sh

# install package manager and install all packages
source $__dir/setup-package-manager
# execute all install.sh order by collection directory name
source $__dir/install
# remove then symlink all link files
source $__dir/relink
# setup os settings
source $__dir/setup-os
