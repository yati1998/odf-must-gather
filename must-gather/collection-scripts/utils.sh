#!/usr/bin/env bash

#
# Please Note:
# While using bash variables inside the functions defined here,
# ensure that the variable has been defined before you,
# call the realted helper function.
#

dbglog() {
    echo -e "${1}" | tee -a "${BASE_COLLECTION_PATH}"/gather-debug.log
}
