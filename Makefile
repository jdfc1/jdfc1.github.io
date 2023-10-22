TAG=$(shell date +%Y.%m.%d)

add:
	git add .
commit: add
	git commit -m " Data de atualização -> $(TAG) atualização"
push:   commit
	git push
