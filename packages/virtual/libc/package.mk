################################################################################
#      This file is part of OpenELEC - http://www.openelec.tv
#      Copyright (C) 2009-2016 Stephan Raue (stephan@openelec.tv)
#
#  OpenELEC is free software: you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation, either version 2 of the License, or
#  (at your option) any later version.
#
#  OpenELEC is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with OpenELEC.  If not, see <http://www.gnu.org/licenses/>.
################################################################################

PKG_NAME="libc"
PKG_VERSION=""
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_SITE="http://www.openelec.tv"
PKG_URL=""
PKG_DEPENDS_TARGET="toolchain glibc tz"
PKG_DEPENDS_INIT="toolchain glibc:init"
PKG_SECTION="virtual"
PKG_SHORTDESC="libc: Metapackage"
PKG_LONGDESC=""
PKG_SHORTDESC="libc: Meta package for installing various tools and libs needed for libc"
PKG_LONGDESC="Meta package for installing various tools and libs needed for libc"

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

if [ "$BOOTLOADER" = "bcm2835-bootloader" ] \
  || [ "$PROJECT" = "S802" ] \
  || [ "$PROJECT" = "S805" ] \
  || [ "$PROJECT" = "S812" ] \
  || [ "$PROJECT" = "S905" -a "$ARCH" = "arm" ] ; then
  PKG_DEPENDS_TARGET="$PKG_DEPENDS_TARGET arm-mem"
  PKG_DEPENDS_INIT="$PKG_DEPENDS_INIT arm-mem:init"
fi
