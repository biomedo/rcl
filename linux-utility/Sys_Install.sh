#!/usr/bin/env bash

# Time-stamp: <2011-02-15 23:24:14 Tuesday by lian>

# @version 1.0
# @author ahei

#########################################System#####################################
apt-get -y install mendeleydesktop
apt-get -y install vlc

# texlive and latex
apt-get -y install texlive-base					
apt-get -y install texlive-base-bin				
apt-get -y install texlive-common					
apt-get -y install texlive-doc-base				
apt-get -y install texlive-extra-utils
apt-get -y install texlive-fonts-recommended
apt-get -y install texlive-latex-base				
apt-get -y install texlive-latex-extra				
apt-get -y install texlive-latex-recommended			
apt-get -y install texlive-pictures				
apt-get -y install latex-beamer					
apt-get -y install latex-xcolor					
apt-get -y install preview-latex-style				

# thunderbird
apt-get -y install thunderbird					
apt-get -y install thunderbird-locale-en-gb			
apt-get -y install thunderbird-locale-fr				
apt-get -y install thunderbird-locale-zh-cn

########################################Xfem########################################
# for gcc g++
apt-get -y install build-essential
# gfortran
apt-get -y install gfortran
# boost
apt-get -y install libboost-dev libboost-graph-dev libboost-program-options-dev
# blas and lapack
apt-get -y install libblas-dev
apt-get -y install liblapack-dev
# -lmetis required by taucs solver
apt-get -y install libparmetis3.1
# uuid
apt-get -y install uuid-dev


#######################################Develop#####################################
# subversion control
apt-get -y install subversion

# cmake and ccmake gui
apt-get -y install cmake cmake-curses-gui cmake-gui
# python and python sectific computation library
apt-get -y install python python-numpy python-scipy idle

# gmsh
apt-get -y install gmsh
