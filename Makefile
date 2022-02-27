a.out:
	gcc ejercicio1.c -o ejecutable1.out
	gcc ejercicio2.c -o ejecutable2.out
	gcc ejercicio3.c -o ejecutable3.out

clean:
	rm ejecutable1.out
	rm ejecutable2.out
	rm ejecutable3.out
	

test: a.out
	bash test_prueba1.sh
	bash test_prueba2.sh
	bash test_prueba3.sh
