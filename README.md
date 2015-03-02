
This Dockerfile will build you mplayer and mencoder from SVN for Ubuntu 14.10

Checout this project and build the image :
``` bash
git clone https://github.com/codingtony/docker-mencoder/
cd docker-mencoder
docker build -t 'codingtony/mencoder' .
docker run --rm -ti codingtony/mencoder bash
```

Once in the shell :
```
compile.sh
```

Follow the instructions, and at the end you will where the 
```
**********************************************************************

 Done. The new package has been installed and saved to

 /mplayer_build/mplayer_1.0~svn37378-1_amd64.deb

 You can remove it from your system anytime using: 

      dpkg -r mplayer

**********************************************************************
```
The version of mplayer can differ.

You can transfer the .deb to another machine using scp.

The receipe has been inspired by http://ubuntuforums.org/showthread.php?t=2149564

