# Copyright 2024 The Dawn & Tint Authors
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are met:
#
# 1. Redistributions of source code must retain the above copyright notice, this
#    list of conditions and the following disclaimer.
#
# 2. Redistributions in binary form must reproduce the above copyright notice,
#    this list of conditions and the following disclaimer in the documentation
#    and/or other materials provided with the distribution.
#
# 3. Neither the name of the copyright holder nor the names of its
#    contributors may be used to endorse or promote products derived from
#    this software without specific prior written permission.
#
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
# AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
# IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
# DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
# FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
# DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
# SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
# CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
# OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
# OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

################################################################################
# File generated by 'tools/src/cmd/gen' using the template:
#   tools/src/cmd/gen/build/BUILD.cmake.tmpl
#
# To regenerate run: './tools/run gen'
#
#                       Do not modify this file directly
################################################################################

################################################################################
# Target:    tint_utils_system
# Kind:      lib
################################################################################
tint_add_target(tint_utils_system lib
  utils/system/env.h
  utils/system/executable_path.h
  utils/system/terminal.h
)

tint_target_add_dependencies(tint_utils_system lib
  tint_utils_containers
  tint_utils_ice
  tint_utils_macros
  tint_utils_math
  tint_utils_memory
  tint_utils_rtti
)

tint_target_add_external_dependencies(tint_utils_system lib
  "src_utils"
)

if((NOT TINT_BUILD_IS_LINUX) AND (NOT TINT_BUILD_IS_MAC) AND (NOT TINT_BUILD_IS_WIN))
  tint_target_add_sources(tint_utils_system lib
    "utils/system/terminal_other.cc"
  )
endif((NOT TINT_BUILD_IS_LINUX) AND (NOT TINT_BUILD_IS_MAC) AND (NOT TINT_BUILD_IS_WIN))

if((NOT TINT_BUILD_IS_WIN))
  tint_target_add_sources(tint_utils_system lib
    "utils/system/env_other.cc"
  )
endif((NOT TINT_BUILD_IS_WIN))

if(TINT_BUILD_IS_LINUX)
  tint_target_add_sources(tint_utils_system lib
    "utils/system/executable_path_linux.cc"
  )
endif(TINT_BUILD_IS_LINUX)

if(TINT_BUILD_IS_LINUX OR TINT_BUILD_IS_MAC)
  tint_target_add_sources(tint_utils_system lib
    "utils/system/terminal_posix.cc"
  )
endif(TINT_BUILD_IS_LINUX OR TINT_BUILD_IS_MAC)

if(TINT_BUILD_IS_MAC)
  tint_target_add_sources(tint_utils_system lib
    "utils/system/executable_file_mac.cc"
  )
endif(TINT_BUILD_IS_MAC)

if(TINT_BUILD_IS_WIN)
  tint_target_add_sources(tint_utils_system lib
    "utils/system/env_windows.cc"
    "utils/system/executable_path_windows.cc"
    "utils/system/terminal_windows.cc"
  )
endif(TINT_BUILD_IS_WIN)
