THEME = hugo-multi-bootswatch
THEME = ghostwriter
GIT_BLOG = ~/git/anaderi.github.io
MSG ?= "update"
SHELL = /bin/bash


help:
	@echo HELP:
	@echo "\thugo new [page/XYZ] -- create new page"
	@echo "\tmake server -- serve locally"
	@echo "\tmake -e MSG='fix' commit"
	@echo "\thugo undraft -- change from draft to real staff"


server:
	hugo server --theme=$(THEME) --buildDrafts --watch

pull_theme:
	git subtree pull --prefix=themes/ghostwriter git@github.com:anaderi/ghostwriter.git master

pull_public:
	git subtree pull --prefix=public git@github.com:anaderi/anaderi.github.io.git master


_gen:
	hugo --theme=$(THEME)

commit:	_gen
	git add -A
	git commit -m "$(MSG)"

publish: _gen
	git push origin contents
	git subtree push --prefix=public git@github.com:anaderi/anaderi.github.io.git master