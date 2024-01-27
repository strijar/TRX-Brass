#!/bin/sh

BOARD_DIR="${BR2_EXTERNAL_BRASS_PATH}/board/brass"

support/scripts/genimage.sh -c "${BOARD_DIR}/genimage.cfg"
