Algoritmo sin_titulo

		Definir claveCorrecta, claveIngresada, intentos Como Entero
		Definir acceso Como Logico
		
		claveCorrecta <-1032012747// Clave de sistema
		intentos <- 1
		acceso <- Falso
		
		Mientras intentos <= 3 Y acceso = Falso Hacer
			Escribir "Intento [", intentos, "/3] - Ingrese su clave:"
			Leer claveIngresada
			
			Si claveIngresada = claveCorrecta Entonces
				acceso <- Verdadero
				Escribir "ACCESO CONCEDIDO. Bienvenido al sistema."
			Sino
				Escribir "CLAVE INCORRECTA."
				intentos <- intentos + 1
			FinSi
		FinMientras
		
		Si acceso = Falso Entonces
			Escribir "SISTEMA BLOQUEADO. Contacte al administrador."
		FinSi

		Definir saldo_disponible, monto, btc Como Real
		Definir opcion Como Entero
		saldo_disponible <- 5000.00
		
		Mientras opcion <> 4 Hacer
			Escribir "=== TERMINAL DE CONEXIÓN CRIPTO ==="
			Escribir "[1] Saldo [2] Retiro [3] Comprar BTC [4] Salir"
			Leer opcion
			
			Segun opcion Hacer
				1:
					Escribir "Saldo disponible: $", saldo_disponible, " USD"
				2:
					Leer monto
					Si monto > saldo_disponible Entonces
						Escribir "EXCEPCIÓN: Flujo de fondos insuficientes en la bóveda actual"
					Sino
						saldo_disponible <- saldo_disponible - monto
						Escribir "Registro exitoso."
					FinSi
				3:
					Leer monto
					Si monto > saldo_disponible Entonces
						Escribir "EXCEPCIÓN: Flujo de fondos insuficientes en la bóveda actual"
					Sino
						btc <- monto / 60000
						saldo_disponible <- saldo_disponible - monto
						Escribir "Adquirido: ", btc, " BTC"
					FinSi
				4:
					Escribir "Protocolo de cierre disparado."
				De Otro Modo:
					Escribir "ERROR: Protocolo inexistente."
			FinSegun
		FinMientras
FinAlgoritmo
