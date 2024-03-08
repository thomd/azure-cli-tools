SHELL = /bin/bash
BINDIR ?= $(HOME)/bin
SOURCEDIR = $(PWD)
COMPLETIONSDIR = $(HOME)/etc

link:
	@while read -r f; do echo "${BINDIR}/$${f}"; ln -s -f ${SOURCEDIR}/$${f} ${BINDIR}/$${f}; done < <(find . -type f -perm +111 -depth 1 | cut -d/ -f2-)
	@while read -r f; do echo "${COMPLETIONSDIR}/$${f}"; ln -s -f ${SOURCEDIR}/$${f} ${COMPLETIONSDIR}/$${f}; done < <(find bash_completion.d -type f)
