DEST=/media/Study/Ubuntu
SOURCE=/glouton/struct/lian/develop


cdirs:=$(cdirs):Ann
cdirs:=$(cdirs):Applis
cdirs:=$(cdirs):BatchCalculation
cdirs:=$(cdirs):build
cdirs:=$(cdirs):code
cdirs:=$(cdirs):doc
cdirs:=$(cdirs):FEMOBJECT 
cdirs:=$(cdirs):ImageData 
cdirs:=$(cdirs):ImageMagickBin
cdirs:=$(cdirs):ItkBin
cdirs:=$(cdirs):latest
cdirs:=$(cdirs):MeshMachine 
cdirs:=$(cdirs):Physics 
cdirs:=$(cdirs):Solver
cdirs:=$(cdirs):SolverInterfaces
cdirs:=$(cdirs):Trellis 
cdirs:=$(cdirs):Util
cdirs:=$(cdirs):UtilConfig
cdirs:=$(cdirs):Xcrack
cdirs:=$(cdirs):Xext
cdirs:=$(cdirs):Xfem
cdirs:=$(cdirs):ZorgLib 


copy_cdirs := $(subst :, ,$(cdirs))


include ../make.inc

run:
	make test; \
	make copy; \
