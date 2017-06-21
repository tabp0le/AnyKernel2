#!/bin/bash
source .config
zip -r9 kernel_htc_pme_aosp_tabp0le_eas_${KERNEL_VER}.zip * -x README.md *.zip package.sh
