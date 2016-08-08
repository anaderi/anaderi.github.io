THEME=hugo-multi-bootswatch
THEME=ghostwriter
GIT_BLOG=~/git/anaderi.github.io


help:
	@echo HELP:
	@echo "\thugo new [page/XYZ] -- create new page"
	@echo "\tmake serve -- serve locally"
	@echo "\tmake publish -- publish"
	@echo "\thugo undraft -- change from draft to real staff"


server:
	hugo server --theme=$(THEME) --buildDrafts --watch

_gen:
	hugo --theme=$(THEME)

_copy:
	cp -r public/ $(GIT_BLOG)
	# cd $(GIT_BLOG) ; git add --all ; # git commit -am "update"

publish: _gen _copy