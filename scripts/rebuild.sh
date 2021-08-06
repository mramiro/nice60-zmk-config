#!/usr/bin/env bash

board="nice60"

west build -s zmk/app -b $board -- -DZMK_CONFIG="$PWD/config"
cat -n build/zephyr/$board.dts.pre.tmp
