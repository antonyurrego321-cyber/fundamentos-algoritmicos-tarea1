Algoritmo ConversionTemperatura
	// 1. Declaración de variables y tipos
	Definir celsius, fahrenheit Como Real
	
	// 2. Entrada de datos
	Escribir "Ingrese la temperatura en grados Celsius:"
	Leer celsius
	
	// 3. Proceso (Aplicación de la fórmula)
	fahrenheit <- (celsius * 9/5) + 32
	
	// 4. Salida con el formato solicitado
	Escribir celsius, " °C equivale a ", fahrenheit, " °F"
FinAlgoritmo