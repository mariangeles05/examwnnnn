Algoritmo feriadepepito
	
		Definir monedas, i, sumaMult5, totalNaranjas Como Entero
		Definir numActual, digito, numeroInvertido Como Entero
		Definir cantPares, cantImpares Como Entero
		
		// iniciar valores
		sumaMult5 <- 0
		totalNaranjas <- 0
		numeroInvertido <- 0
		cantPares <- 0
		cantImpares <- 0
		
		Escribir "Hola Pepitoooo, bienvenido a la feria de los numeros."
		Escribir "Cuantas moneditas tienes para entrar?"
		Leer monedas
		
		// Estacion 1
		Para i <- 1 Hasta monedas Hacer
			Si i MOD 5 = 0 Entonces  // cuando puedas profe le tengo unas dudas sobre MOD
				sumaMult5 <- sumaMult5 + i
			FinSi
		FinPara
		Escribir "La suma de los multiplos de 5 hasta ", monedas, " es ", sumaMult5
		Si sumaMult5 > 100 Entonces
			Escribir "Ganasteeee un pase especial, que alegria! jejejeje"
		SiNo
			Escribir "No hay pase, pero sigamos con calma. "
		FinSi
		
		// Estacion 2
		Para i <- 1 Hasta monedas Hacer
			Si i MOD 2 = 0 Entonces
				totalNaranjas <- totalNaranjas + 2
			SiNo
				totalNaranjas <- totalNaranjas + 1
			FinSi
		FinPara
		Escribir "Pepito recoge un total de ", totalNaranjas, " naranja dulces."
		
		// Estacion 3
		numActual <- monedas
		Mientras numActual > 0 Hacer
			digito <- numActual MOD 10
			numeroInvertido <- numeroInvertido * 10 + digito
			numActual <- numActual / 10     // division entera
		FinMientras
		Escribir "El espejo muestra tu numero asi: ", numeroInvertido
		
		// Estacion 4
		numActual <- monedas
		Mientras numActual > 0 Hacer
			digito <- numActual MOD 10
			Si digito MOD 2 = 0 Entonces
				cantPares <- cantPares + 1
			SiNo
				cantImpares <- cantImpares + 1
			FinSi
			numActual <- numActual / 10
		FinMientras
		
		Si cantPares > cantImpares Entonces
			Escribir "Acceso concedido, Pepitoo sale de la feria contenta. yeiiiiiii"
		SiNo
			Escribir "Acceso denegado, Pepito se queda un poco mas. nooo te vas para rappi"
		FinSi


FinAlgoritmo
