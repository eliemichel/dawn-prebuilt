# Copyright 2023 The Tint Authors.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

################################################################################
# File generated by 'tools/src/cmd/gen' using the template:
#   tools/src/cmd/gen/build/BUILD.cmake.tmpl
#
# To regenerate run: './tools/run gen'
#
#                       Do not modify this file directly
################################################################################

include(lang/wgsl/writer/ast_printer/BUILD.cmake)
include(lang/wgsl/writer/ir_to_program/BUILD.cmake)
include(lang/wgsl/writer/raise/BUILD.cmake)
include(lang/wgsl/writer/syntax_tree_printer/BUILD.cmake)

################################################################################
# Target:    tint_lang_wgsl_writer
# Kind:      lib
################################################################################
tint_add_target(tint_lang_wgsl_writer lib
  lang/wgsl/writer/options.cc
  lang/wgsl/writer/options.h
  lang/wgsl/writer/output.cc
  lang/wgsl/writer/output.h
  lang/wgsl/writer/writer.cc
  lang/wgsl/writer/writer.h
)

tint_target_add_dependencies(tint_lang_wgsl_writer lib
  tint_api_common
  tint_lang_core
  tint_lang_core_constant
  tint_lang_core_ir
  tint_lang_core_type
  tint_lang_wgsl
  tint_lang_wgsl_ast
  tint_lang_wgsl_program
  tint_lang_wgsl_sem
  tint_lang_wgsl_writer_ast_printer
  tint_lang_wgsl_writer_ir_to_program
  tint_lang_wgsl_writer_raise
  tint_lang_wgsl_writer_syntax_tree_printer
  tint_utils_containers
  tint_utils_diagnostic
  tint_utils_generator
  tint_utils_ice
  tint_utils_id
  tint_utils_macros
  tint_utils_math
  tint_utils_memory
  tint_utils_reflection
  tint_utils_result
  tint_utils_rtti
  tint_utils_symbol
  tint_utils_text
  tint_utils_traits
)

################################################################################
# Target:    tint_lang_wgsl_writer_bench
# Kind:      bench
################################################################################
tint_add_target(tint_lang_wgsl_writer_bench bench
  lang/wgsl/writer/writer_bench.cc
)

tint_target_add_dependencies(tint_lang_wgsl_writer_bench bench
  tint_cmd_bench
  tint_lang_core
  tint_lang_core_constant
  tint_lang_core_type
  tint_lang_wgsl
  tint_lang_wgsl_ast
  tint_lang_wgsl_program
  tint_lang_wgsl_sem
  tint_lang_wgsl_writer
  tint_utils_containers
  tint_utils_diagnostic
  tint_utils_ice
  tint_utils_id
  tint_utils_macros
  tint_utils_math
  tint_utils_memory
  tint_utils_reflection
  tint_utils_result
  tint_utils_rtti
  tint_utils_symbol
  tint_utils_text
  tint_utils_traits
)
