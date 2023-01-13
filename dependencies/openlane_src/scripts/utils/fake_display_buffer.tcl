# Copyright 2020 Efabless Corporation
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

proc fake_display_buffer {args} {
	set screen :9
	exec Xvfb $screen -screen 0 640x480x24 &
	set ::env(DISPLAY) $screen
}

proc kill_display_buffer {args} {
	exec killall Xvfb
}


package provide openlane_utils 0.9
