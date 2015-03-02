FROM ubuntu:14.10
RUN apt-get update && apt-get upgrade -y && apt-get install build-essential -y
RUN apt-get install -y subversion checkinstall yasm git docbook-xml docbook-xsl xsltproc libxml2-utils libaa1-dev libasound2-dev libcaca-dev libcdparanoia-dev libdca-dev libdirectfb-dev libenca-dev libesd0-dev libfontconfig1-dev libfreetype6-dev libfribidi-dev libgif-dev libgl1-mesa-dev libjack-jackd2-dev libopenal-dev libpulse-dev libsdl1.2-dev libsvga1-dev libvdpau-dev libxinerama-dev libxv-dev libxvmc-dev libxxf86dga-dev libxxf86vm-dev librtmp-dev libsctp-dev libass-dev libsmbclient-dev libtheora-dev libogg-dev libxvidcore-dev libspeex-dev libvpx-dev libschroedinger-dev libdirac-dev libdv4-dev libopencore-amrnb-dev libopencore-amrwb-dev libmp3lame-dev libtwolame-dev libmad0-dev libgsm1-dev libbs2b-dev liblzo2-dev ladspa-sdk libopenjpeg-dev libfaad-dev libmpg123-dev libopus-dev libbluray-dev libaacs-dev libgtk2.0-dev wget
ADD codec.sh /bin/codec.sh
ADD compile.sh /bin/compile.sh
RUN /bin/codec.sh
