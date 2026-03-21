Algoritmo FacturaCompraPro
    // 1. Declaración de variables
    Definir producto Como Cadena
    Definir precio, cantidad, subtotal, descuento, montoIva, total Como Real
    
    // 2. Captura de datos
    Escribir "--- SISTEMA DE VENTAS ---"
    Escribir "Nombre del artículo:"
    Leer producto
    Escribir "Precio unitario:"
    Leer precio
    Escribir "Cantidad comprada:"
    Leer cantidad
    
    // 3. Cálculos lógicos
    subtotal <- precio * cantidad
    
    // Aplicar descuento solo si supera los 100.000
    Si subtotal > 100000 Entonces
        descuento <- subtotal * 0.10
    Sino
        descuento <- 0
    FinSi
    
    montoIva <- (subtotal - descuento) * 0.19
    total <- (subtotal - descuento) + montoIva
    
    // 4. Salida con formato de recibo
    Escribir ""
    Escribir "========= FACTURA DE VENTA ========="
    Escribir "DETALLE:   ", producto
    Escribir "CANTIDAD:  ", cantidad
    Escribir "SUBTOTAL:  $", subtotal
    Escribir "DESCUENTO: $", descuento, " (10%)"
    Escribir "IVA 19%:   $", montoIva
    Escribir "------------------------------------"
    Escribir "TOTAL NETO: $", total
    Escribir "===================================="
FinAlgoritmo