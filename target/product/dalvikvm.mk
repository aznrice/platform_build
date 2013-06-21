#
# Copyright (C) 2013 The Android Open Source Project
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

# Provides a functioning dalvikvm without Android frameworks

ifeq ($(WITH_ART),false)
    PRODUCT_PACKAGES += \
        libdvm \
        dexopt
else
    PRODUCT_PACKAGES += \
        libart \
        dex2oat
    PRODUCT_PROPERTY_OVERRIDES += \
        dalvik.vm.lib=libart.so
endif

PRODUCT_PACKAGES += \
    apache-xml \
    bouncycastle \
    cacerts \
    conscrypt \
    core \
    core-junit \
    dalvikvm \
    dexdeps \
    dexdump \
    dexlist \
    dmtracedump \
    dx \
    ext \
    hprof-conv \
    icu.dat \
    libcrypto \
    libexpat \
    libicui18n \
    libicuuc \
    libjavacore \
    libnativehelper \
    libssl \
    libz \
    okhttp

# host-only dependencies
ifeq ($(WITH_HOST_DALVIK),true)
    PRODUCT_PACKAGES += \
        apache-xml-hostdex \
        bouncycastle-hostdex \
        conscrypt-hostdex \
        core-hostdex \
        dalvik \
        libcrypto-host \
        libexpat-host \
        libicui18n-host \
        libicuuc-host \
        libjavacore \
        libssl-host \
        libz-host \
        okhttp-hostdex
endif