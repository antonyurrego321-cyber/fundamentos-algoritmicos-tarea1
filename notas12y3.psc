Algoritmo sin_titulo
		
		escribir "Ingrese su nombre completo:"
		leer nombre
		
		escribir "Ingrese numero de ficha:"
		leer ficha
		
		definir nota1, nota2, nota3, suma, promedio como real
		
		// NOTA 1
		escribir "Introduzca la nota 1:"
		leer nota1
		si nota1 > 5.0 o nota1 < 0.0 entonces
			escribir "Error: nota invalida"
		FinSi
		
		// NOTA 2
		escribir "Introduzca la nota 2:"
		leer nota2
		si nota2 > 5.0 o nota2 < 0.0 entonces
			escribir "Error: nota invalida"
		FinSi
		
		// NOTA 3
		escribir "Introduzca la nota 3:"
		leer nota3
		si nota3 > 5.0 o nota3 < 0.0 entonces
			escribir "Error: nota invalida"
		FinSi
		
		// SUMA
		suma = nota1 + nota2 + nota3
		
		// PROMEDIO
		promedio = suma / 3
		
		escribir "La suma de las notas es: ", suma
		escribir "El promedio es: ", promedio
		
FinAlgoritmo
