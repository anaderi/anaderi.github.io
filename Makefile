THEME = hugo-multi-bootswatch
THEME = ghostwriter
GIT_BLOG = ~/git/anaderi.github.io
msg ?= Site update on $(shell date +'%Y-%m-%d %H:%M %Z')
SHELL = /bin/bash


help:
	@echo HELP:
	@echo -e "\thugo new [page/XYZ] -- create new page"
	@echo -e "\tmake server -- serve locally"
	@echo -e "\tmake -e msg='fix' publish"
	@echo -e "\thugo undraft -- change from draft to real staff"
#@echo $(msg)


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
	-git commit -m "$(msg)"

publish: commit
	git push origin contents
	git subtree push --prefix=public git@github.com:anaderi/anaderi.github.io.git master
	git subtree push --prefix=themes/ghostwriter git@github.com:anaderi/ghostwriter.git master