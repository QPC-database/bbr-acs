#!/usr/bin/env bash

# Copyright (c) 2021, ARM Limited and Contributors. All rights reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are met:
#
# Redistributions of source code must retain the above copyright notice, this
# list of conditions and the following disclaimer.
#
# Redistributions in binary form must reproduce the above copyright notice,
# this list of conditions and the following disclaimer in the documentation
# and/or other materials provided with the distribution.
#
# Neither the name of ARM nor the names of its contributors may be used
# to endorse or promote products derived from this software without specific
# prior written permission.
#
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
# AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
# IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
# ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE
# LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
# CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
# SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
# INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
# CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
# ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
# POSSIBILITY OF SUCH DAMAGE.

TOP_DIR=`pwd`

create_scripts_link()
{
 ln -s $TOP_DIR/../../common/scripts/framework.sh             $TOP_DIR/build-scripts/framework.sh
 ln -s $TOP_DIR/../../common/scripts/parse_params.sh          $TOP_DIR/build-scripts/parse_params.sh
 ln -s $TOP_DIR/../../common/scripts/build-sct.sh             $TOP_DIR/build-scripts/build-sct.sh
 ln -s $TOP_DIR/../../common/scripts/build-fwts.sh            $TOP_DIR/build-scripts/build-fwts.sh
}

init_dir()
{
 mkdir -p $TOP_DIR/build-scripts/config
 cp -r $TOP_DIR/../config/*                                 $TOP_DIR/build-scripts/config/
}

create_scripts_link
init_dir

source ./build-scripts/build-fwts.sh IR S
source ./build-scripts/build-sct.sh  IR S

