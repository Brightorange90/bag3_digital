// SPDX-License-Identifier: Apache-2.0
// Copyright 2019 Blue Cheetah Analog Design Inc.
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

{{ _header }}

parameter DELAY = {{ delay | default(0, true) }};
wire tmp;

assign #DELAY tmp = VSS ? 1'bx : (~VDD ? 1'b0 : s);

tranif1 XTRN1 (d, tmp, en );
tranif0 XTRN0 (d, tmp, enb);

endmodule