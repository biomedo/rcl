# This is the Makefile for the operation in /home/lian

DEST=/media/Study/Ubuntu
SOURCE=/home/lian


cdirs:=$(cdirs):.thunderbird


copy_dirs := $(subst :, ,$(cdirs))


include ../make.inc


run:
	make test; \
	make rev_copy; \
