Algoritmo BusquedaBinaria
    // ============================================
    // DECLARACIÓN DE VARIABLES
    // ============================================
    Definir registros Como Entero
    Definir inicio, fin1, mitad, meta Como Entero
    Definir encontrado Como Lógico
	
    // ============================================
    // INICIALIZACIÓN DE DATOS (Vector Ordenado)
    // ============================================
    Dimension registros[8]
    registros[1] <- 1002
    registros[2] <- 1045
    registros[3] <- 2098
    registros[4] <- 3301
    registros[5] <- 3311
    registros[6] <- 4005
    registros[7] <- 5020
    registros[8] <- 6081
	
    encontrado <- Falso
	
    // ============================================
    // ENTRADA DEL USUARIO
    // ============================================
    Escribir "=== SISTEMA BÚSQUEDA BINARIA ==="
    Escribir "Registros disponibles:"
    Escribir "1002, 1045, 2098, 3301, 3311, 4005, 5020, 6081"
    Escribir ""
    Escribir "Ingrese el número de registro a localizar:"
    Leer meta
	
    // ============================================
    // ALGORITMO BÚSQUEDA BINARIA
    // ============================================
    inicio <- 1
fin1 <- 8

Mientras (inicio <= fin1) Y (encontrado = Falso) Hacer
	mitad <- TRUNC((inicio + fin1) / 2)
	
	Escribir "Comparando con posición ", mitad, ": ", registros[mitad]
	
	Si registros[mitad] = meta Entonces
		Escribir ""
		Escribir "? ¡ÉXITO! Registro localizado"
		Escribir "Posición en el sistema: ", mitad
		Escribir "Valor del registro: ", registros[mitad]
		encontrado <- Verdadero
	Sino
		Si registros[mitad] < meta Entonces
			Escribir "  ? Buscando en mitad superior"
			inicio <- mitad + 1
		Sino
			Escribir "  ? Buscando en mitad inferior"
		fin <- mitad - 1
	FinSi
FinSi
FinMientras

// ============================================
// MANEJO DE NO ENCONTRADO
// ============================================
Si encontrado = Falso Entonces
	Escribir ""
	Escribir "? ERROR: Registro ", meta, " no existe en la base de datos"
FinSi
FinAlgoritmo