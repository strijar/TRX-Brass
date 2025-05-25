#!/bin/sh

# genimage will need to find the extlinux.conf
# in the binaries directory

BOARD_DIR="${BR2_EXTERNAL_BRASS_PATH}/board/brass"

cp -r "${TARGET_DIR}/mnt/settings/" "${BINARIES_DIR}/settings"

install -m 0644 -D "${BOARD_DIR}/extlinux.conf" "${BINARIES_DIR}/extlinux/extlinux.conf"
install -m 0644 -D "${BOARD_DIR}/$2/system.bit" "${BINARIES_DIR}/system.bit"
