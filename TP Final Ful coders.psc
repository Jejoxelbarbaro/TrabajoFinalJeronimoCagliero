Algoritmo appDeViajes
	// Definir Variables
	Definir kmsRecorrido, litrosDeCombustible, consumoVehiculo, horasRecorridas, tiempoDeViaje, minutosRecorridos, costoDeViaje, precioDeViaje, tamanioPaquete, valorDeCombustible, costoXHora, costoConductor, costoCombustible Como Real
	Definir moto, auto, flete, transporte Como Caracter
	litrosDeCombustible <- 0
	consumoVehiculo <- 0
	tiempoDeViaje <- 0
	//Datos
	Escribir "Porfavor ingrese el tamaño máximo del paquete en cm"
	Leer tamanioPaquete
	Si tamanioPaquete < 120 Entonces
		Escribir "El paquete irá en moto"
		transporte <- moto
		consumoVehiculo <- 33.33
	SiNo
		Si tamanioPaquete > 120 Y tamanioPaquete < 230 Entonces
			Escribir "El paquete irá en auto"
			transporte <- auto
			consumoVehiculo <- 10
		SiNo
			Si tamanioPaquete >= 230 Entonces
				Escribir "El paquete irá en flete"
				transporte <- flete
				consumoVehiculo <- 2.5
			Fin Si
		Fin Si
	Fin Si
	//Costos
	Escribir "Ingrese valor del litro de Cobustible"
	Leer valorDeCombustible
	Escribir "Ingrese el costo por hora de trabajo del chofer"
	Leer costoXHora
	
	//Cotización
	Escribir "Ingrese los Kilometros del Recorrido"
	leer kmsRecorrido
	Escribir "Sección ingreso de tiempo de viaje se le solicitaran Horas y minutos por separado recuerde que el tiempo puede variar según el tipo de vehiculo"
	Escribir "Ingrese Horas del viaje"
	Leer horasRecorridas
	Escribir "Ingrese Minutos del Viaje"
	Leer minutosRecorridos
	
	tiempoDeViaje <-(horasRecorridas+(minutosRecorridos/60))
	costoConductor <-costoXHora*tiempoDeViaje
	litrosDeCombustible <- kmsRecorrido/consumoVehiculo
	costoCombustible <- litrosDeCombustible*valorDeCombustible
	costoDeViaje <- costoCombustible+costoConductor
	precioDeViaje <- costoDeViaje*2
	
	Escribir "El costo de viaje es de $" costoDeViaje
	Escribir "El precio de Viaje es de $" precioDeViaje
	//Mensaje Final
FinAlgoritmo
