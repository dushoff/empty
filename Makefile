#### Empty repo; developed while testing init/gh, but not implemented
## This is which repo?
## github_public
## github_private

current: target
-include target.mk
Ignore = target.mk

# -include makestuff/perl.def

vim_session:
	bash -cl "vmt"

######################################################################

### Makestuff

Sources += Makefile

Ignore += makestuff
msrepo = https://github.com/dushoff

Makefile: makestuff/00.stamp
makestuff/%.stamp:
	- $(RM) makestuff/*.stamp
	(cd makestuff && $(MAKE) pull) || git clone --depth 1 $(msrepo)/makestuff
	touch $@

-include makestuff/os.mk

## -include makestuff/pipeR.mk

-include makestuff/git.mk
-include makestuff/visual.mk
