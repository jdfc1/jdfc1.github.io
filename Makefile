TAG=$(shell date +%Y.%m.%d)

add:
	git add .
commit: add
	git commit -m " -> Enviado no dia $(TAG) atualização de perfil de PT to EN"
push:   commit
	git push