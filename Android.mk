#
# Copyright (C) 2015 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

ifeq ($(TARGET_SOC), exynos7870)
exynos7870_dirs := \
	mobicore \
	libgatekeeper \
#	libkeymaster \
#	libhdmimodule \
	libdisplaymodule \
	libhwcutilsmodule \

ifeq ($(TARGET_BOOTLOADER_BOARD_NAME), universal7870)
# [HACK] n_bringup added - must be fixed
#exynos7870_dirs += \
	libcameraSec  \
	libcamera3Sec \
	libcameraInterface
else
exynos7870_dirs += \
	libcamera \
	libcamera3 \
	libcameraInterface
endif

ifeq ($(BOARD_USES_VIRTUAL_DISPLAY), true)
exynos7870_dirs += \
	libvirtualdisplaymodule
endif

include $(call all-named-subdir-makefiles,$(exynos7870_dirs))

endif
