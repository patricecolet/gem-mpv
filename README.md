# gem-mpv

Bring the power of `libmpv` into `Gem`.

## Building

You need a recent version of Gem installed locally and the libmpv at least version 0.27.2.

https://github.com/mpv-player/mpv/blob/master/DOCS/compile-windows.md

    cd ~
    git clone https://github.com/umlaeute/Gem.git
    
follow instruction in https://github.com/umlaeute/Gem/blob/master/.git-ci/gitlab-iem.yml 
build:w64 section

    cd ~/gem-mpv
    make

Then you will find a `gem_mpv.dll` in gem-mpv folder, but to run it out of the box it might need a bunch of dlls.

    find . -name "*.dll" -exec ./localdeps.win.sh {} +

this is a fork from : https://github.com/avilleret/gem-mpv

