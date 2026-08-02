#!/bin/bash
#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

set -e

DEVICE=vili
VENDOR=xiaomi

INITIAL_COPYRIGHT_YEAR=2021
HELPER="${ANDROID_BUILD_TOP}/tools/extract-utils/extract_utils.sh"
if [ ! -f "${HELPER}" ]; then
    HELPER="${ANDROID_BUILD_TOP}/vendor/aether/build/tools/extract_utils.sh"
fi
source "${HELPER}"

# Default variables
CLEAN_VENDOR=true
KANG=
SECTION=

while [ "${#}" -gt 0 ]; do
    case "${1}" in
        -n | --no-cleanup )
            CLEAN_VENDOR=false
            ;;
        -k | --kang )
            KANG="--kang"
            ;;
        -s | --section )
            SECTION="${2}"; shift
            CLEAN_VENDOR=false
            ;;
        * )
            SRC="${1}"
            ;;
    esac
    shift
done

if [ -z "${SRC}" ]; then
    SRC="adb"
fi

# Initialize extraction
setup_vendor "${DEVICE}" "${VENDOR}" "${ANDROID_ROOT}" false "${CLEAN_VENDOR}"

extract "${MY_DIR}/proprietary-files.txt" "${SRC}" "${KANG}" --section "${SECTION}"

"${MY_DIR}/setup-makefiles.sh"
