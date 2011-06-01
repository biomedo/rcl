# # .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

#################for GNU#####################
export CC=/usr/bin/gcc
export CXX=/usr/bin/g++
#################End for GNU#################

alias cdi="cd /cassini/struct/lian/develop/BatchCalculation/Multi_Homog_Random_Circle_Fiber_Matrix_Image_10240_R20"
export cdi=/cassini/struct/lian/develop/BatchCalculation/Multi_Homog_Random_Circle_Fiber_Matrix_Image_10240_R20

#===============================All Self Compiled library, Taucs or SuperLU Direct Sover=========================================
export DEVROOT=/glouton/struct/$USER/develop
export LIAN_EMACS_LISP_DIR=/glouton/struct/lian/develop/tools/svn_cvs/rcl/lian-emacs-lisp
export LIAN_DOC_LYXTEX_DIR=~/private/TexDocSvn/MyDocLyxTex
# export LIAN_CUR_WORK_DIR=/cassini/struct/lian/develop/BatchCalculation/Homog_Random_Checkerboard_10240_Xfem
export LIAN_CUR_WORK_DIR=/cassini/struct/lian/develop/BatchCalculation/Multi_Homog_Random_Circle_Fiber_Matrix_Image_10240_R20

#===============================The same as develop=====================================
export DEVROOT=/glouton/struct/$USER/develop-alternative
# export DEVROOT=/glouton/struct/$USER/develop-alternative-petsc
# export DEVROOT=/glouton/struct/$USER/develop-alternative-2
# export DEVROOT=/glouton/struct/$USER/develop-alternative-2-petsc

#===============================The same as develop-alternative only change the code homog ======================================
# export DEVROOT=/glouton/struct/$USER/develop-alternative-homog

#===============================The same as develop, except Exporting Stress and Disp============================================
# export DEVROOT=/glouton/struct/$USER/develop-alternative-stress-disp

#===============================Using Gem Softserver library, test case here=====================================================
# export DEVROOT=/glouton/struct/$USER/develop-gem

#===============================develop linking the libs in softserver in cassini================================================
#export DEVROOT=/cassini/struct/lian/develop                                                                         

# User specific aliases and functions
#Variables to compile the code

export GDFONTPATH=/usr/share/fonts/truetype/ttf-dejavu-lpc
export GNUPLOT_DEFAULT_GDFONT=DejaVuLGCSans
#useful commands
alias c3d='/glouton/struct/lian/develop/tools/bin/c3d'
alias c2d='/glouton/struct/lian/develop/tools/bin/c2d'
alias itksnap='/glouton/struct/lian/develop/tools/bin/itksnap64/bin/itksnap &'
alias paraview='/glouton/struct/lian/develop/tools/packages/ParaView-3.8.1-Linux-x86_64/bin/paraview'
alias r='./main ./data/main.dat'
alias gm='/glouton/struct/lian/develop/tools/bin/gmsh'
# alias ctags='/glouton/struct/lian/develop/tools/sources/ctags/build_x86_64/bin/ctags'

#---- Compressions
tarc ()  { tar czvf $1.tar.gz $1; }
tarx () { tar xzvf $1; }
tart () { tar tzvf $1; }
tarb () { tar czvf $1.tar.gz $1 > $1.txt; }


#---- Pour eviter les betises...
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias nano='nano -w'
alias ssh='ssh -X'
alias ls="ls --color=auto -F"
alias lsp="pwd && ls --color=auto -F"
alias grep="grep --color"
alias lss="ls -lh"
alias rc="gedit ~/.bashrc &"
alias s="source ~/.bashrc" 

#---- Repertoires
alias cddev="cd $DEVROOT"
alias cdlatest="cd $DEVROOT/latest"
alias cdbuild="cd $DEVROOT/build"
alias cdxfem="cd $DEVROOT/Xfem/Xfem/Xfem"
alias cdpub="cd /scratch/lian/public"
alias cdc="cd $DEVROOT/Applis/ITK_Utility/ITK_Utility"
alias cdp="cd /glouton/struct/lian/develop/Applis/Physics/Physics"
alias cdf="cd /glouton/struct/lian/develop/tools/svn_cvs/"
alias cdh="cd $DEVROOT/Applis/Homog/Homog"
alias cdl="cd ~/links"
alias cdb="cd $DEVROOT/BatchCalculation"
alias cdd="cd $DEVROOT/Documents"
alias mdc="make distclean NODEP=1"
alias mst="make setup NODEP=1"
alias msto="make setup NODEP=1 VERS=opt"
alias makej="make -j8 NODEP=1"
alias makejo="make -j8 NODEP=1 VERS=opt"
alias mj="make -j8 NODEP=1 VERS=opt"
# alias ma="mdc; mst; makej;"
alias ma="mdc; msto; makejo;"
alias so="cdbuild && make builda && cd -;"
# emacs client for fast launching emacs 
# em () { emacsclient -t -a "" $1; }
#emc () { emacsclient -c -a "" $1; }
alias yshnode2gb="qsub -l select=1:ncpus=1:mem=2Gb -I"
alias yshnode4gb="qsub -l select=1:ncpus=1:mem=4Gb -I"
alias yshnode6gb="qsub -l select=1:ncpus=1:mem=6Gb -I"
alias yshnode8gb="qsub -l select=1:ncpus=1:mem=8Gb -I"
alias yshnode10gb="qsub -l select=1:ncpus=1:mem=10Gb -I"
alias yshnode12gb="qsub -l select=1:ncpus=1:mem=12b -I"
yshnodexgb () { qsub -l select=1:ncpus=1:mem=$1Gb -I; }
yshnodexgb_heavy ()  { qsub -l mem=$1gb -q heavy -I; }

em () { emacs -q -nw $1; }
emlocal () { LC_CTYPE=zh_CN.utf8 emacs -nw $1; }
# emlocal () { TERM=xterm-256color LC_CTYPE=zh_CN.utf8 emacs -nw $1; }
emacslocal () { LC_CTYPE=zh_CN.utf8 emacs $1; }
emacsecn () { emacs -q -l ~/sys_backup/dot_emacs_ecn $1; }
# emtitan () { LC_CTYPE=zh_CN.utf8 /glouton/struct/lian/develop/tools/bin/emacs/bin/emacs -nw $1; }
emtitan () { /glouton/struct/lian/develop/tools/bin/emacs/bin/emacs -nw $1; }
emacstitan () { /glouton/struct/lian/develop/tools/bin/emacs/bin/emacs $1; }
export EDITOR="em"
export SVN_EDITOR="em"
ysh () { ssh -Y $1; }
mck () { make -j8 checkone DIR=$1; }
mcko () { make -j8 checkone DIR=$1 VERS=opt; }
gb () { cat ~/.bashrc | grep $1; }
gh () { history | grep $1; }
g () { $1 | grep $2; }
alias mtlab='matlab -nojvm -nodisplay -nosplash'
alias mtcomsol='comsol matlab -ml -nodesktop -ml -nosplash'
alias mtcomsol35='/usr/local/comsol/comsol35a/bin/comsol -np 10 matlab -mlroot /usr/local/matlab/2009b/ -ml -nodesktop -ml -nosplash'
alias abaqusex='XLIB_SKIP_ARGB_VISUALS=1 abaqus'
alias sm1="ssh -X mosix1"
alias sm2="ssh -X mosix2"
alias sm3="ssh -X mosix3"
alias sm4="ssh -X mosix4"
alias spg="ssh -X pegase"
alias stt="ssh -Y titan"
alias sfr="ssh -X frioul"
alias sen="ssh -X envau"
alias sslwd="ssh -X lwd@localhost"
alias sskth="ssh -X xiaogai@193.10.38.139"
alias q="qstat"
alias ql="qstat -u lian"
alias qn="qstat -an"
alias qnl="qstat -an -u lian"


#--------------------------#
###  TWEAKING TERMINAL   ###
#--------------------------#

#---- Completion auto
if [ "$PS1" -a -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi

#---- Couleur
if [ "$PS1" ]; then
    PS1='[${debian_chroot:+($debian_chroot)}\[\033[0;31m\]\u@\h\[\033[0;0m\]:\[\033[0;33m\]\W\[\033[0;0m\]]\$ '
    PS1='\[\033[0;0m\][${debian_chroot:+($debian_chroot)}\[\033[0;31m\]\u@\h\[\033[0;0m\]:\[\033[0;33m\]\W\[\033[0;0m\]] \[\033[0;31m\]\w \n \[\033[0;33m\]$ \[\033[0;39m\]'

    # PS1='\n\[\033[1;34m\]\342\226\210\342\226\210 \u @ \w\n\[\033[0;36m\]\342\226\210\342\226\210 \t $ \[\033[0;39m\]'
    # PS1='\n\[\033[0;33m\]\342\226\210\342\226\210 \[\033[0;33m\]\W\[\033[0;36m\] \w \[\033[1;34m\] @ \d \t\n\[\033[0;36m\]\342\226\210\342\226\210 [${debian_chroot:+($debian_chroot)}\[\033[0;31m\]\u@\h\[\033[0;0m\]\[\033[0;36m\]] $ \[\033[0;39m\]'
    # PS1='\[\033[0;31m\]\342\226\210\342\226\210 [${debian_chroot:+($debian_chroot)}\[\033[0;31m\]\u@\h\[\033[0;0m\]:\[\033[0;33m\]\W\[\033[1;34m\]]\[\033[0;36m\] \w \[\033[1;34m\] @ \d \t\n\[\033[1;34m\]\342\226\210\342\226\210 $ \[\033[0;39m\]'
    # PS1='\[\033[0;31m\]\342\226\210\342\226\210 [${debian_chroot:+($debian_chroot)}\[\033[0;31m\]\u@\h\[\033[0;0m\]:\[\033[0;33m\]\W\[\033[1;34m\]]\[\033[0;31m\] \w \[\033[1;34m\]\n\[\033[1;34m\]\342\226\210\342\226\210 $ \[\033[0;39m\]'
fi

#---- TermColor
# export TERM=xterm-256color

#---- ls command COLOR
if [ $TERM == "eterm-color" ]   # for emacs only
then
    eval "`dircolors -b ~/.self_load_dir_colors`"
fi

#---- xmodmap key board map
#add the following command in /etc/rc.local
#xmodmap ~/.self_load_xmodmap 2>/dev/null


#---- End buzzer
# xset -b
