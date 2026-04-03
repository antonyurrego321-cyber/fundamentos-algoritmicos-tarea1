Algoritmo sin_titulo
		Definir estatura, peso Como Real
		Definir esApto Como Logico
		
		Escribir "Ingrese estatura (metros):"
		Leer estatura
		Escribir "Ingrese peso (kg):"
		Leer peso
		
		// Refactorización: Uso de operadores relacionales estrictos y conectivo Y
		Si (estatura > 1.70) Y (peso < 80) Entonces
			Escribir "Estado: ADMITIDO"
		Sino
			Escribir "Estado: NO APTO"
		FinSi
FinAlgoritmo
