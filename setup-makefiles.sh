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
source "${HELPER}"

# Initialize setup-makefiles
setup_vendor "${DEVICE}" "${VENDOR}" "${ANDROID_ROOT}"

# Warning header for generated makefiles
write_headers

write_makefiles "${MY_DIR}/proprietary-files.txt" true

# Finish setup
write_footers
