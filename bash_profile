#SOME ALIASES BY ET
alias ls='ls -G'
alias ll='ls -ahlF'
alias la='ls -A'
alias l='ls -CF'
alias lt='la -t'

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

alias cl='clear'

#alias xxx='exit'

alias sftp='with-readline sftp'

#export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
#export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\W\[\033[m\]\$ "
export PS1="\[\033[31m\]\u\[\033[m\]@\[\033[34;1m\]MyAir:\[\033[33;1m\]\W\[\033[m\]\$ "
#export PS1="💀 \[\033[31m\]\u\[\033[m\]@\[\033[34;1m\]MyAir:\[\033[33;1m\]\W\[\033[m\]\$ "
#export PS1="\w \`if [ \$? = 0 ]; then echo -e '\[\e[01;32m\]\n\xE2\x98\xBA'; else echo -e '\[\e[01;31m\]\n\xE2\x98\xB9'; fi\` \[\e[01;34m\]\[\e[00m\]"

export CLICOLOR=1
#export LSCOLORS=GxFxCxDxBxegedabagaced
export LSCOLORS=ExFxBxDxCxegedabagacad

################## Lie is used by Cadabra
export PATH=/Users/efrain/Programs/LiE::$PATH

############################################

#········ ECLIPSE .............
export PATH=/Applications/eclipse:$PATH



########### ASPIC is a library to solve inflationary models
#########in slow roll approx.
export LD_LIBRARY_PATH=/Users/efrain/Programs/aspic/lib:$LD_LIBRARY_PATH

##############    INTEL COMPILER VARS     ############################# 

#source /opt/intel/composerxe/bin/compilervars.sh intel64
#source /opt/intel/composer_xe_2011_sp1.11.344/bin/ifortvars.sh intel64
#source /opt/intel/composer_xe_2011_sp1.11.344/bin/ifortvars.sh intel64 mod ilp64

# this next version contains ifort,mkl & dgb ( NOT ICC :[ )
source /opt/intel/composer_xe_2015/bin/compilervars.sh intel64

# icc compiler,this scripts includes refs to mkl 2013, but at this point mkl has been included in 2015 version. IS THIS A PROBLEM?
#source /opt/intel/composer_xe_2013_sp1.4.201/bin/iccvars.sh intel64 


################ LIBS FOR SILO #########################
export PATH=/Users/efrain/Programs/szip:${PATH}
export PATH=/Users/efrain/Programs/hdf5:${PATH}
export PATH=/Users/efrain/Programs/silo:${PATH}
export PATH=/Users/efrain/Programs/silo/bin:${PATH}
export DYLD_LIBRARY_PATH=/Users/efrain/Programs/szip/lib:${DYLD_LIBRARY_PATH}
export DYLD_LIBRARY_PATH=/Users/efrain/Programs/szip/include:${DYLD_LIBRARY_PATH}
export DYLD_LIBRARY_PATH=/Users/efrain/Programs/hdf5/lib:${DYLD_LIBRARY_PATH}
export DYLD_LIBRARY_PATH=/Users/efrain/Programs/hdf5/include:${DYLD_LIBRARY_PATH}
export DYLD_LIBRARY_PATH=/Users/efrain/Programs/silo/lib:${DYLD_LIBRARY_PATH}
export DYLD_LIBRARY_PATH=/Users/efrain/Programs/silo/include:${DYLD_LIBRARY_PATH}
 
export SZIP_PATH=/Users/efrain/Programs/szip
export HDF5_PATH=/Users/efrain/Programs/hdf5
export SILO_PATH=/Users/efrain/Programs/silo

#export DYLD_LIBRARY_PATH=/Applications/Xcode.app/Contents/Developer/usr/lib/llvm-gcc/4.2.1:${DYLD_LIBRARY_PATH}


############   FFTW 3.3.4 ###########################

export PATH=/Users/efrain/Programs/fftw3:${PATH}
export FFTW_PATH=/Users/efrain/Programs/fftw3

#########  PYTHONPATH ###########################
export PYTHONPATH=/Users/efrain/Programs/scalpy/lib/python2.7/site-packages/:${PYTHONPATH}
export PYTHONPATH=/Users/efrain/Programs/emcee/lib/python2.7/site-packages/:${PYTHONPATH}


########  CFITSIO   ###############
#export PATH=
export CFITSIO_PATH=/usr/local/Cellar/cfitsio/3.370

########  HEALPIX    #############
export HEALPIX_PATH=/usr/local/Cellar/healpix/3.11

#######    WMPA V5 ##############
export WMAP_PATH=/Users/efrain/Documents/COSMO_CODES/CMB_data/wmap_likelihood_v5

#######  Visit 2.9 ###########
export PATH=/Applications/VisIt2.app/Contents/MacOS:$PATH
