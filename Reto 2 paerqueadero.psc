Algoritmo sin_titulo
	
	escribir "ingrese tipo de dia (1:laboral, 2:fin de semana, 3:festivo)"
	leer tipodedia
	escribir "ingrese la cantidad de horas"
	leer horas
	
	segun tipodedia hacer
		1:tarifa_base <-5.000
		2:tarifa_base <-8.000
		3:tarifa_base <-10.000
			
			
de otro modo: escribir "dia no valido"
			
			
			
			
FinSegun                                  

subtotal <- horas *tarifa_base

si (horas mod 2 = 0) entonces
	total<-subtotal* 1.20  //aplicar recargo del 20% 
SiNo
	total <- subtotal
FinSi
escribir "el total a pagar es:$" total 

FinAlgoritmo
