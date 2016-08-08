THEME=hugo-multi-bootswatch
THEME=ghostwriter
GIT_BLOG=~/git/anaderi.github.io
MSG ?= "update"


help:
	@echo HELP:
	@echo "\thugo new [page/XYZ] -- create new page"
	@echo "\tmake serve -- serve locally"
	@echo "\tmake -e MSG='fix' publish -- publish"
	@echo "\thugo undraft -- change from draft to real staff"


server:
	hugo server --theme=$(THEME) --buildDrafts --watch

pull_theme:
	git subtree pull --prefix=themes/ghostwriter git@github.com:anaderi/ghostwriter.git master

pull_public:
	git subtree pull --prefix=public git@github.com:anaderi/anaderi.github.io.git master


_gen:
	hugo --theme=$(THEME)

publish: _gen
	#git commit -am $(MSG)
	git push origin contents
	git subtree push --prefix=public git@github.com:anaderi/anaderi.github.io.git master