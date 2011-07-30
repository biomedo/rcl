# Attention, never define the phony "run" in this make.inc

all:
	@echo "please explicitly and carefully invoke the phony!!"


test:
	@echo "test"
	for i in $(copy_dirs); do                   \
		echo copy $(SOURCE)/$$i to $(DEST); \
	done
	for i in $(sync_dirs); do                   \
		echo sync $(SOURCE)/$$i to $(DEST); \
	done

copy:
	@echo Setting up copy...
	for i in $(copy_dirs); do \
		echo $(SOURCE)/$$i...; \
		cp -rd $(SOURCE)/$$i $(DEST); \
	done

rev_copy:
	@echo Setting up reverse copy...
	for i in $(copy_dirs); do \
		echo $(DEST)/$$i...; \
		cp -rd $(DEST)/$$i $(SOURCE); \
	done

sync:
	@echo Setting up sync...
	for i in $(sync_dirs); do \
		echo $(SOURCE)/$$i...; \
		rsync -e  ssh  -avz lian@localhost:$(SOURCE)/$$i $(DEST); \
	done

rev_sync:
	@echo Setting up reverse sync...
	for i in $(sync_dirs); do \
		echo $(DEST)/$$i...; \
		rsync -e  ssh  -avz lian@localhost:$(DEST)/$$i $(SOURCE); \
	done
