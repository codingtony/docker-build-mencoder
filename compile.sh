#!/bin/bash -e
cd /mplayer_build && \
svn checkout svn://svn.mplayerhq.hu/mplayer/trunk mplayer && cd mplayer && \
./configure --codecsdir=/usr/local/lib/codecs && \
make -j 2 && make html-chunked && \
mkdir -vp doc-pak && \
cp -v DOCS/HTML/*/* AUTHORS Changelog LICENSE README doc-pak && \
 checkinstall -D --install=yes --fstrans=no --pakdir "/mplayer_build" \
   --pkgname mplayer --backup=no --deldoc=yes --deldesc=yes --delspec=yes --default \
   --pkgversion "3:1.0~svn$(LC_ALL=C svn info 2> /dev/null | \
     grep Revision | cut -d' ' -f2)" && \
make distclean &&  ldconfig
