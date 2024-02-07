// Copyright 2019 The Dawn & Tint Authors
//
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided that the following conditions are met:
//
// 1. Redistributions of source code must retain the above copyright notice, this
//    list of conditions and the following disclaimer.
//
// 2. Redistributions in binary form must reproduce the above copyright notice,
//    this list of conditions and the following disclaimer in the documentation
//    and/or other materials provided with the distribution.
//
// 3. Neither the name of the copyright holder nor the names of its
//    contributors may be used to endorse or promote products derived from
//    this software without specific prior written permission.
//
// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
// AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
// IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
// DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
// FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
// DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
// SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
// CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
// OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
// OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

#include "dawn/tests/unittests/wire/WireTest.h"

namespace dawn::wire {
namespace {

using testing::Return;

class WireBasicTests : public WireTest {
  public:
    WireBasicTests() {}
    ~WireBasicTests() override = default;
};

// One call gets forwarded correctly.
TEST_F(WireBasicTests, CallForwarded) {
    wgpuDeviceCreateCommandEncoder(device, nullptr);

    WGPUCommandEncoder apiCmdBufEncoder = api.GetNewCommandEncoder();
    EXPECT_CALL(api, DeviceCreateCommandEncoder(apiDevice, nullptr))
        .WillOnce(Return(apiCmdBufEncoder));

    FlushClient();
}

// Test that calling methods on a new object works as expected.
TEST_F(WireBasicTests, CreateThenCall) {
    WGPUCommandEncoder encoder = wgpuDeviceCreateCommandEncoder(device, nullptr);
    wgpuCommandEncoderFinish(encoder, nullptr);

    WGPUCommandEncoder apiCmdBufEncoder = api.GetNewCommandEncoder();
    EXPECT_CALL(api, DeviceCreateCommandEncoder(apiDevice, nullptr))
        .WillOnce(Return(apiCmdBufEncoder));

    WGPUCommandBuffer apiCmdBuf = api.GetNewCommandBuffer();
    EXPECT_CALL(api, CommandEncoderFinish(apiCmdBufEncoder, nullptr)).WillOnce(Return(apiCmdBuf));

    FlushClient();
}

// Test that client reference/release do not call the backend API.
TEST_F(WireBasicTests, RefCountKeptInClient) {
    WGPUCommandEncoder encoder = wgpuDeviceCreateCommandEncoder(device, nullptr);

    wgpuCommandEncoderReference(encoder);
    wgpuCommandEncoderRelease(encoder);

    WGPUCommandEncoder apiCmdBufEncoder = api.GetNewCommandEncoder();
    EXPECT_CALL(api, DeviceCreateCommandEncoder(apiDevice, nullptr))
        .WillOnce(Return(apiCmdBufEncoder));

    FlushClient();
}

// Test that client reference/release calls the backend API.
TEST_F(WireBasicTests, ReleaseCalledOnRefCount0) {
    WGPUCommandEncoder encoder = wgpuDeviceCreateCommandEncoder(device, nullptr);

    wgpuCommandEncoderRelease(encoder);

    WGPUCommandEncoder apiCmdBufEncoder = api.GetNewCommandEncoder();
    EXPECT_CALL(api, DeviceCreateCommandEncoder(apiDevice, nullptr))
        .WillOnce(Return(apiCmdBufEncoder));

    EXPECT_CALL(api, CommandEncoderRelease(apiCmdBufEncoder));

    FlushClient();
}

}  // anonymous namespace
}  // namespace dawn::wire
