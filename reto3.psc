Algoritmo sin_titulo
	total_compra <- 0 
	continuar <- "si"
	
	mientras continuar = "si" hacer
		
		escribir "ingrese el valor del producto"
		leer precio 
		total_compra <- total_compra + precio 
		escribir "Desea agregar otro producto? ( si/no)"
		leer continuar
		
	FinMientras
	
	si total_compra > 500 Entonces 
		decuento <- total_compra * 0.15
		total_final <- total_compra - descuento
		escribir "descuento VIP aplicado"
		
	SiNo
		total_final <- total_compra
		
		
	FinSi
	
	escribir"subtotal: $" total_compra 
	escribir"total a pagar:$" total_final
	
FinAlgoritmo
