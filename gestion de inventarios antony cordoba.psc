Algoritmo sin_titulo
		Definir n, i, posMax Como Entero
		Definir precios, ivas, totales, maxPrecio Como Real
		Definir nombres Como Cadena
		
		Escribir "Cantidad de productos a registrar:"
		Leer n
		Dimension nombres[n], precios[n], ivas[n], totales[n]
		
		maxPrecio <- 0
		Para i <- 1 Hasta n Hacer
			Escribir "Nombre del producto ", i, ":"
			Leer nombres[i]
			Escribir "Precio base de ", nombres[i], ":"
			Leer precios[i]
			
			ivas[i] <- precios[i] * 0.19
			totales[i] <- precios[i] + ivas[i]
			
			Si totales[i] > maxPrecio Entonces
				maxPrecio <- totales[i]
				posMax <- i
			FinSi
		FinPara
		
		Escribir "--- REPORTE DE INVENTARIO ---"
		Para i <- 1 Hasta n Hacer
			Escribir nombres[i], " | Total con IVA: $", totales[i]
		FinPara
		Escribir "Producto más costoso: ", nombres[posMax], " ($", maxPrecio, ")"
FinAlgoritmo

