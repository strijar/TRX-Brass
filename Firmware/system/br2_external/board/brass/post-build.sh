#!/bin/sh

# genimage will need to find the extlinux.conf
# in the binaries directory

BOARD_DIR="${BR2_EXTERNAL_BRASS_PATH}/board/brass"

install -m 0644 -D "${BOARD_DIR}/extlinux.conf" "${BINARIES_DIR}/extlinux.conf"
install -m 0644 -D "${BOARD_DIR}/fpga/system.bit" "${BINARIES_DIR}/system.bit"
