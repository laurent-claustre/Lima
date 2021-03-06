###########################################################################
# This file is part of LImA, a Library for Image Acquisition
#
#  Copyright (C) : 2009-2017
#  European Synchrotron Radiation Facility
#  BP 220, Grenoble 38043
#  FRANCE
#
#  Contact: lima@esrf.fr
#
#  This is free software; you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation; either version 3 of the License, or
#  (at your option) any later version.
#
#  This software is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with this program; if not, see <http://www.gnu.org/licenses/>.
############################################################################

set(software_operation_srcs
    src/SoftOpInternalMgr.cpp
    src/SoftOpExternalMgr.cpp
    src/SoftOpId.cpp)

file(GLOB_RECURSE software_operation_incs "include/*.h")

# Propagate to parent scope
# set(software_operation_srcs software_operation_srcs_list PARENT_SCOPE)
# set(software_operation_incs software_operation_incs_list PARENT_SCOPE)

add_library(software_operation OBJECT ${software_operation_srcs} ${software_operation_incs})

target_include_directories(software_operation PUBLIC "include")
