DEST=/media/Study/Ubuntu/cassini
SOURCE=/cassini/lian

sdirs:=$(sdirs):MyCollect
sdirs:=$(sdirs):MyPhotos


# cdirs:=$(cdirs):Mendeley
cdirs:=$(cdirs):MyDocSvn
cdirs:=$(cdirs):MyPublications
cdirs:=$(cdirs):Rcl


sync_dirs := $(subst :, ,$(sdirs))
copy_dirs := $(subst :, ,$(cdirs))

include ../make.inc

run:
	make sync
	make copy
