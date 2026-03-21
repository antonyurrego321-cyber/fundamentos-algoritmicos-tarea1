Algoritmo CajeroAutomatico
    // 1. Declaración de variables
    Definir monto, b50, b20, b10, resto Como Entero
    
    // 2. Entrada de datos
    Escribir "Ingrese la cantidad de dinero (múltiplos de 10):"
    Leer monto
    
    // 3. Validación: ¿Es múltiplo de 10?
    // Usamos MOD 10 porque los billetes más chicos son de 10.
    Si monto MOD 10 <> 0 Entonces
        Escribir "Monto no válido. Solo se permiten múltiplos de 10, 20 o 50."
    Sino
        Escribir "Monto válido, procesando..."
        
        // 4. Lógica de cálculo de billetes (Descomposición)
        // Billetes de 50
        b50 <- TRUNC(monto / 50)
        resto <- monto MOD 50
        
        // Billetes de 20
        b20 <- TRUNC(resto / 20)
        resto <- resto MOD 20
        
        // Billetes de 10
        b10 <- TRUNC(resto / 10)
        
        // 5. Mostrar resultado
        Escribir "Entregando dinero..."
        Escribir "- Billetes de 50: ", b50
        Escribir "- Billetes de 20: ", b20
        Escribir "- Billetes de 10: ", b10
    FinSi
    
    Escribir "Fin del proceso."
FinAlgoritmo