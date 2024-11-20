#
# Copyright (C) 2020 Xiaomi Corporation
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

include $(APPDIR)/Make.defs

ifneq ($(CONFIG_UTILS_DIVIDE),)
MODULE = $(CONFIG_UTILS_DIVIDE)
PRIORITY = $(CONFIG_UTILS_DIVIDE_PRIORITY)
STACKSIZE = $(CONFIG_UTILS_DIVIDE_STACKSIZE)

PROGNAME = divide_benchmark divide_benchmark_branchfree divide_test_c99 divide_tester
MAINSRC = benchmark.cpp benchmark_branchfree.cpp test_c99.c tester.cpp

CXXEXT := .cpp
VPATH += test
endif

include $(APPDIR)/Application.mk
