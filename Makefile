TAG=$(shell date +%Y.%m.%d)

add:
	git add .
commit: add
	git commit -m " -> Atualização de perfil e acréscimos de página em inglês"
push:   commit
	git push

