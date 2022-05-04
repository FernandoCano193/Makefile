compilar:
	gcc -Os -S -o $(archivo).s $(archivo).c
	as -o $(archivo).o $(archivo).s
	gcc -o $(archivo) $(archivo).o
borrar:
	rm $(archivo).o
	rm $(archivo)
subir_git:
	git add .
	git commit -m '$(mensaje)'
	git push
