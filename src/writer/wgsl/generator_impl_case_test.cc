// Copyright 2020 The Tint Authors.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

#include <memory>

#include "gtest/gtest.h"
#include "src/ast/break_statement.h"
#include "src/ast/case_statement.h"
#include "src/ast/identifier_expression.h"
#include "src/ast/sint_literal.h"
#include "src/ast/type/i32_type.h"
#include "src/writer/wgsl/generator_impl.h"
#include "src/writer/wgsl/test_helper.h"

namespace tint {
namespace writer {
namespace wgsl {
namespace {

using WgslGeneratorImplTest = TestHelper;

TEST_F(WgslGeneratorImplTest, Emit_Case) {
  ast::type::I32 i32;

  auto* body = create<ast::BlockStatement>(
      Source{}, ast::StatementList{
                    create<ast::BreakStatement>(Source{}),
                });
  ast::CaseSelectorList lit;
  lit.push_back(create<ast::SintLiteral>(Source{}, &i32, 5));
  ast::CaseStatement c(Source{}, lit, body);

  gen.increment_indent();

  ASSERT_TRUE(gen.EmitCase(&c)) << gen.error();
  EXPECT_EQ(gen.result(), R"(  case 5: {
    break;
  }
)");
}

TEST_F(WgslGeneratorImplTest, Emit_Case_MultipleSelectors) {
  ast::type::I32 i32;

  auto* body = create<ast::BlockStatement>(
      Source{}, ast::StatementList{
                    create<ast::BreakStatement>(Source{}),
                });
  ast::CaseSelectorList lit;
  lit.push_back(create<ast::SintLiteral>(Source{}, &i32, 5));
  lit.push_back(create<ast::SintLiteral>(Source{}, &i32, 6));
  ast::CaseStatement c(Source{}, lit, body);

  gen.increment_indent();

  ASSERT_TRUE(gen.EmitCase(&c)) << gen.error();
  EXPECT_EQ(gen.result(), R"(  case 5, 6: {
    break;
  }
)");
}

TEST_F(WgslGeneratorImplTest, Emit_Case_Default) {
  auto* body = create<ast::BlockStatement>(
      Source{}, ast::StatementList{
                    create<ast::BreakStatement>(Source{}),
                });
  ast::CaseStatement c(Source{}, ast::CaseSelectorList{}, body);

  gen.increment_indent();

  ASSERT_TRUE(gen.EmitCase(&c)) << gen.error();
  EXPECT_EQ(gen.result(), R"(  default: {
    break;
  }
)");
}

}  // namespace
}  // namespace wgsl
}  // namespace writer
}  // namespace tint
