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
# Target:    tint_lang_core_ir_analysis
# Kind:      lib
################################################################################
tint_add_target(tint_lang_core_ir_analysis lib
  lang/core/ir/analysis/integer_range_analysis.cc
  lang/core/ir/analysis/integer_range_analysis.h
  lang/core/ir/analysis/loop_analysis.cc
  lang/core/ir/analysis/loop_analysis.h
)

tint_target_add_dependencies(tint_lang_core_ir_analysis lib
  tint_api_common
  tint_lang_core
  tint_lang_core_constant
  tint_lang_core_ir
  tint_lang_core_type
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

tint_target_add_external_dependencies(tint_lang_core_ir_analysis lib
  "src_utils"
)

################################################################################
# Target:    tint_lang_core_ir_analysis_test
# Kind:      test
################################################################################
tint_add_target(tint_lang_core_ir_analysis_test test
  lang/core/ir/analysis/integer_range_analysis_test.cc
  lang/core/ir/analysis/loop_analysis_test.cc
)

tint_target_add_dependencies(tint_lang_core_ir_analysis_test test
  tint_api_common
  tint_lang_core
  tint_lang_core_constant
  tint_lang_core_intrinsic
  tint_lang_core_ir
  tint_lang_core_ir_analysis
  tint_lang_core_ir_test
  tint_lang_core_type
  tint_utils
  tint_utils_containers
  tint_utils_diagnostic
  tint_utils_ice
  tint_utils_macros
  tint_utils_math
  tint_utils_memory
  tint_utils_result
  tint_utils_rtti
  tint_utils_symbol
  tint_utils_text
)

tint_target_add_external_dependencies(tint_lang_core_ir_analysis_test test
  "gtest"
  "src_utils"
)
