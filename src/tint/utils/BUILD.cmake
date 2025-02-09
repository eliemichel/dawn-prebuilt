# Copyright 2023 The Dawn & Tint Authors
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

include(utils/bytes/BUILD.cmake)
include(utils/command/BUILD.cmake)
include(utils/containers/BUILD.cmake)
include(utils/diagnostic/BUILD.cmake)
include(utils/file/BUILD.cmake)
include(utils/ice/BUILD.cmake)
include(utils/macros/BUILD.cmake)
include(utils/math/BUILD.cmake)
include(utils/memory/BUILD.cmake)
include(utils/protos/BUILD.cmake)
include(utils/result/BUILD.cmake)
include(utils/rtti/BUILD.cmake)
include(utils/strconv/BUILD.cmake)
include(utils/symbol/BUILD.cmake)
include(utils/system/BUILD.cmake)
include(utils/text/BUILD.cmake)

################################################################################
# Target:    tint_utils
# Kind:      lib
################################################################################
tint_add_target(tint_utils lib
  utils/generation_id.cc
  utils/generation_id.h
  utils/internal_limits.h
  utils/reflection.cc
  utils/reflection.h
  utils/rwmutex.h
  utils/socket.cc
  utils/socket.h
  utils/text_generator.cc
  utils/text_generator.h
)

tint_target_add_dependencies(tint_utils lib
  tint_utils_containers
  tint_utils_diagnostic
  tint_utils_ice
  tint_utils_macros
  tint_utils_math
  tint_utils_memory
  tint_utils_result
  tint_utils_rtti
  tint_utils_text
)

tint_target_add_external_dependencies(tint_utils lib
  "src_utils"
)

if(TINT_BUILD_IS_WIN)
  tint_target_add_external_dependencies(tint_utils lib
    "winsock"
  )
endif(TINT_BUILD_IS_WIN)

################################################################################
# Target:    tint_utils_test
# Kind:      test
################################################################################
tint_add_target(tint_utils_test test
  utils/reflection_test.cc
)

tint_target_add_dependencies(tint_utils_test test
  tint_utils
  tint_utils_containers
  tint_utils_diagnostic
  tint_utils_ice
  tint_utils_macros
  tint_utils_math
  tint_utils_memory
  tint_utils_result
  tint_utils_rtti
  tint_utils_text
)

tint_target_add_external_dependencies(tint_utils_test test
  "gtest"
  "src_utils"
)
