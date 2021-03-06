# ------------------------------------------------------------------------- #
# Copyright 2013 Esri                                                       #
#                                                                           #
# Licensed under the Apache License, Version 2.0 (the "License");           #
# you may not use this file except in compliance with the License.          #
# You may obtain a copy of the License at                                   #
#                                                                           #
#     http://www.apache.org/licenses/LICENSE-2.0                            #
#                                                                           #
# Unless required by applicable law or agreed to in writing, software       #
# distributed under the License is distributed on an "AS IS" BASIS,         #
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  #
# See the License for the specific language governing permissions and       #
# limitations under the License.                                            #
# ------------------------------------------------------------------------- #

# ------------------------------------------------------------------------
# AIX setup
# ------------------------------------------------------------------------

OS_LD_VAR  = LIBPATH

VCC        = xlc_r
VCCPP      = xlC_r
VRC        = true
VLD        = xlc_r
VLDPP      = xlC_r
VLIB       = ar
VDLL       = xlC_r
VDLLPP     = xlC_r

OBJ_EXT    = o
LIB_EXT    = a
DLL_EXT    = so
EXE_EXT    =

LIB_S_EXT  = a
LIB_D_EXT  = so

ifeq ($(OS_ARCH), 64)
  ARCHITECTURE = -q64
  AR_OPTS      = -X64
else
  ARCHITECTURE = -q32
  AR_OPTS      = -X32
endif

CDEFS      = $(ARCHITECTURE) -qmaxmem=-1
CPPDEFS    = $(CDEFS)
EXEDEFS    = $(ARCHITECTURE) -brtl -L$(LIB_DIR)
EXEPPDEFS  = $(ARCHITECTURE) -brtl -L$(LIB_DIR)
LIBDEFS    = $(AR_OPTS) qc
DLLDEFS    = $(ARCHITECTURE) -brtl -L$(LIB_DIR) -G

OS_LIBS    = -lm -lpthreads
OS_LIBSPP  = -lm -lpthreads
