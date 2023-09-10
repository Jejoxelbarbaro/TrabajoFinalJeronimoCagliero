Algoritmo appDeViajes
	// Definir Variables
	Definir kmsRecorrido, litrosDeCombustible, consumoVehiculo, horasRecorridas, tiempoDeViaje, costoDeViaje, precioDeViaje, valorDeCombustible, costoXHora, costoConductor, costoCombustible Como Real
	Definir OP, tipoDeCarga, velocidad Como Entero
	Definir moto, auto, flete, transporte Como Caracter
	litrosDeCombustible <- 0
	consumoVehiculo <- 0
	tiempoDeViaje <- 0
	//Datos
	Escribir "Tipo de Carga"
	Escribir "   1. Pequeña: hasta 110 cm de alguno de sus lados y 15 Kg de peso"
	Escribir "   2. Mediana: Desde 110 cm hasta 230 cm de alguno de sus lados y 300 Kg de peso"
	Escribir "   3. Pesada: Desde 230 cm hasta 600 cm de alguno de sus lados y 1500 Kg de peso"
	Escribir "   4. Salir"
	Escribir "Elija una opción (1-4): "
	Leer tipoDeCarga
	
	Segun tipoDeCarga Hacer
		1: 
			Escribir "Ingrese la de cantidad de paquetes"
			Leer nroDeBultos
			Si nroDeBultos <=5 
				transporte<-"moto"
			FinSi
			Si nroDeBultos  > 5 Y nroDeBultos <= 20
				transporte <-"auto"
			FinSi
			
			Si nroDeBultos > 20 Y nroDeBultos <= 100
				transporte <-"flete"
			FinSi
			
		2:
			Escribir "Ingrese la de cantidad de paquetes"
			Leer nroDeBultos
			Si nroDeBultos  <= 10 
				transporte <-"auto"
			FinSi
			
			Si nroDeBultos > 10 Y nroDeBultos <= 50
				transporte <-"flete"
			FinSi
		3:
			Escribir "Ingrese la de cantidad de paquetes"
			Leer nroDeBultos
			Si nroDeBultos <= 25
				transporte <-"flete"
			FinSi
	FinSegun
			
Si transporte = "auto" Entonces
		consumoVehiculo <- 10
		costoXHora <- 1500
		velocidad <- 50
		Sino
	FinSi
	Si transporte = "moto" Entonces
		consumoVehiculo <- 33.33
		costoXHora<- 2500
		velocidad <- 35
	FinSi
	Si transporte = "flete" Entonces
		consumoVehiculo<- 3.5
		costoXHora <- 4000
		velocidad <- 23
	FinSi
	Escribir "La carga irá en " transporte
	//Costos
	Escribir "Ingrese valor del litro de Cobustible"
	Leer valorDeCombustible
	
	//Cotización
	Escribir "Ingrese los Kilometros del Recorrido"
	leer kmsRecorrido
	
	tiempoDeViaje <-(kmsRecorrido/velocidad)
	litrosDeCombustible <- kmsRecorrido/consumoVehiculo
	costoCombustible <- litrosDeCombustible*valorDeCombustible
	costoConductor<- (tiempoDeViaje*costoXHora)
	costoDeViaje <- costoCombustible+costoConductor
	precioDeViaje <- costoDeViaje*1.8
	
		// mostrar menu
		Escribir "Tipo de Cliente"
		Escribir "   1. Consumidor Final:"
		Escribir "   2. Empresa"
		Escribir "   3. Empresa Cliente Regular"
		Escribir "   4. Salir"
		Escribir "Elija una opción (1-4): "
		Leer op
		Si (op=1) Entonces
			Escribir "El precio de Viaje es de $" precioDeViaje
			
		FinSi
		Si (op=2) Entonces
			IVA <- precioDeViaje*0.21
			Escribir "El precio de Viaje es de $", precioDeViaje, " + IVA (", IVA ")"
		FinSi
		Si (op=3) Entonces	
			precioDeViaje <- precioDeViaje*0.15
			IVA <- precioDeViaje*0.21
			Escribir "El precio de Viaje es de $", precioDeViaje, " + IVA (", IVA ")"
		FinSi
		Si (op>4) Entonces
			Escribir "Opción no válida"
		FinSi
	Escribir "No se olvide de pasarle al cliente la cotización"
	//Mensaje Final
FinAlgoritmo
