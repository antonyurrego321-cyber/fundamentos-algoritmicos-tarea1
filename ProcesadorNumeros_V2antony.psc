Algoritmo ProcesadorNumeros_V2
    // 1. Definición de variables
    Definir num, suma, contadorPositivos, vueltas Como Entero
    
    // 2. Inicialización
    suma <- 0
    contadorPositivos <- 0
    vueltas <- 1 // Controla el ciclo manualmente
    
    Escribir "=== PANEL DE CONTROL DE DATOS ==="
    Escribir "Por favor, ingrese 5 números enteros."
    Escribir "----------------------------------"
    
    // 3. Ciclo dinámico con 'Mientras'
    Mientras vueltas <= 5 Hacer
        Escribir "Dato [", vueltas, "/5]: " Sin Saltar
        Leer num
        
        // Acumulación (Suma total)
        suma <- suma + num
        
        // Conteo (Solo positivos)
        Si num > 0 Entonces
            contadorPositivos <- contadorPositivos + 1
        FinSi
        
        // Incremento manual del contador de vueltas
        vueltas <- vueltas + 1
    FinMientras
    
    // 4. Salida con diseño de reporte
    Escribir ""
    Escribir "---------- REPORTE FINAL ----------"
    Escribir ">> SUMATORIA TOTAL    : ", suma
    Escribir ">> TOTAL DE POSITIVOS : ", contadorPositivos
    Escribir "-----------------------------------"
    Escribir "Proceso finalizado con éxito."
FinAlgoritmo
