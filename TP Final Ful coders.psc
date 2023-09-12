Algoritmo appDeViajes
	// Definir Variables
	Definir kmsRecorrido, litrosDeCombustible, consumoVehiculo, horasRecorridas, tiempoDeViaje, costoDeViaje, precioDeViaje, valorDeCombustible, costoXHora, costoConductor, costoCombustible Como Real
	Definir op, tipoDeCarga, velocidad Como Entero
	Definir moto, auto, flete, transporte Como Cadena
	litrosDeCombustible <- 0
	consumoVehiculo <- 0
	tiempoDeViaje <- 0
	valorDeCombustible <- 430
	// Recorrido
	Escribir 'Ingrese los Kilometros del Recorrido (máximo 80 Kilometros)'
	Leer kmsRecorrido
	Si kmsRecorrido>0 Y kmsRecorrido<80 Entonces
		// Carga para selección de Movil
		Escribir 'Tipo de Carga'
		Escribir '   1. Pequeña: hasta 110 cm de alguno de sus lados y 15 Kg de peso'
		Escribir '   2. Mediana: Desde 110 cm hasta 230 cm de alguno de sus lados y 300 Kg de peso'
		Escribir '   3. Pesada: Desde 230 cm hasta 600 cm de alguno de sus lados y 1500 Kg de peso'
		Repetir
			Escribir 'Ingrese tipo de carga del 1 al 3'
			Leer tipoDeCarga
		Hasta Que (tipoDeCarga>0 Y tipoDeCarga<4)
		Según tipoDeCarga Hacer
			1:
				Repetir
					Escribir 'Ingrese la de cantidad de paquetes maximo permitido 100'
					Leer nroDeBultos
					Si nroDeBultos<=5 Entonces
						transporte <- 'moto'
					SiNo
						Si nroDeBultos>5 Y nroDeBultos<=20 Entonces
							transporte <- 'auto'
						SiNo
							Si nroDeBultos>20 Y nroDeBultos<=100 Entonces
								transporte <- 'flete'
							FinSi
						FinSi
					FinSi
				Hasta Que nroDeBultos<100
			2:
				Repetir
					Escribir 'Ingrese la de cantidad de paquetes maximo permitido 50'
					Leer nroDeBultos
					Si nroDeBultos<=10 Entonces
						transporte <- 'auto'
					SiNo
						Si nroDeBultos>10 Y nroDeBultos<=50 Entonces
							transporte <- 'flete'
						FinSi
					FinSi
				Hasta Que nroDeBultos<50
			3:
				Repetir
					Escribir 'Ingrese la de cantidad de paquetes maximo permitido 25'
					Leer nroDeBultos
					Si nroDeBultos<=25 Entonces
						transporte <- 'flete'
					FinSi
				Hasta Que nroDeBultos<25
		FinSegún
		Si transporte='auto' Entonces
			consumoVehiculo <- 10
			costoXHora <- 2500
			velocidad <- 35
		SiNo
			Si transporte='moto' Entonces
				consumoVehiculo <- 33.33
				costoXHora <- 1500
				velocidad <- 50
			SiNo
				Si transporte='flete' Entonces
					consumoVehiculo <- 3.5
					costoXHora <- 4000
					velocidad <- 23
				FinSi
			FinSi
		FinSi
		Escribir 'La carga irá en ', transporte
		// Cotización
		tiempoDeViaje <- (kmsRecorrido/velocidad)
		litrosDeCombustible <- (kmsRecorrido/consumoVehiculo)
		costoCombustible <- (litrosDeCombustible*valorDeCombustible)
		costoConductor <- (tiempoDeViaje*costoXHora)
		costoDeViaje <- (costoCombustible+costoConductor)
		precioDeViaje <- costoDeViaje*1.8
		// mostrar menu cliente
		Escribir 'Tipo de Cliente'
		Escribir '   1. Consumidor Final:'
		Escribir '   2. Empresa'
		Escribir '   3. Empresa Cliente Regular'
		Repetir
			Escribir 'Elija una opción (1-3): '
			Leer op
		Hasta Que op>0 Y op<4
		Si (op=1) Entonces
			Escribir 'El precio de Viaje es de $', precioDeViaje
		FinSi
		Si (op=2) Entonces
			IVA <- precioDeViaje*0.21
			Escribir 'El precio de Viaje es de $', precioDeViaje, ' + IVA (', IVA, '),TOTAL: $', precioDeViaje+IVA
		FinSi
		Si (op=3) Entonces
			precioDeViaje <- precioDeViaje*0.85
			IVA <- precioDeViaje*0.21
			Escribir 'El precio de Viaje es de $', precioDeViaje, ' + IVA (', IVA, '),TOTAL: $', precioDeViaje+IVA
		FinSi
		// Mensaje Final
		Escribir 'No se olvide de pasarle al cliente la cotización'
	SiNo
		Escribir 'La distancia del recorrido es superior a la permitida'
	FinSi
FinAlgoritmo
