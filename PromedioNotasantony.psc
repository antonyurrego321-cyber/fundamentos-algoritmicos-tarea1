Algoritmo PromedioNotas
    // 1. Definir las variables
    Definir n1, n2, n3, promedio Como Real
    
    // 2. Entrada de datos
    Escribir "Ingrese la primera nota:"
    Leer n1
    Escribir "Ingrese la segunda nota:"
    Leer n2
    Escribir "Ingrese la tercera nota:"
    Leer n3
    
    // 3. Proceso (Suma y División)
    promedio <- (n1 + n2 + n3) / 3
    
    // 4. Salida de resultados
    Escribir "El promedio final es: ", promedio
    
    // Opcional: Saber si aprobó (ejemplo con 3.0)
    Si promedio >= 3.0 Entonces
        Escribir "Estado: Aprobado"
    Sino
        Escribir "Estado: Reprobado"
    FinSi
FinAlgoritmo

