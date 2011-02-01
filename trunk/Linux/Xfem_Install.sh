#!/usr/bin/env bash

# Time-stamp: <2011-01-23 10:49:22 Sunday by lian>

# @version 1.0
# @author ahei

# for gcc g++
sudo apt-get install build-essential
# gfortran
sudo apt-get install gfortran
# boost
sudo apt-get install libboost-dev libboost-graph-dev libboost-program-options-dev
# blas and lapack
sudo apt-get install libblas-dev
sudo apt-get install liblapack-dev
# -lmetis required by taucs solver
sudo apt-get install libparmetis3.1
# uuid
sudo apt-get install uuid-dev
