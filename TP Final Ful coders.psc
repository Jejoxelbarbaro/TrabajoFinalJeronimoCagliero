Algoritmo appDeViajes
	// Definir Variables
	Definir kmsRecorrido, litrosDeCombustible, consumoVehiculo, horasRecorridas, tiempoDeViaje, minutosRecorridos, costoDeViaje, precioDeViaje, tamanioPaquete, valorDeCombustible, costoXHora, costoConductor, costoCombustible Como Real
	Definir OP Como Entero
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
	
	Repetir
		// mostrar menu
		Escribir "Tipo de Cliente"
		Escribir "   1. Consumidor Final:"
		Escribir "   2. Empresa"
		Escribir "   3. Empresa Cliente Regular"
		Escribir "   4. Salir"
		Escribir "Elija una opción (1-4): "
		Leer op
		Si (op=1) Entonces
			precioDeViaje <- costoDeViaje*1.8
			Escribir "El precio de Viaje es de $" precioDeViaje
			
		FinSi
		Si (op=2) Entonces
			precioDeViaje <- costoDeViaje*1.8
			IVA <- precioDeViaje*0.21
			Escribir "El precio de Viaje es de $", precioDeViaje, " + IVA (", IVA ")"
		FinSi
		Si (op=3) Entonces	
			precioDeViaje <- costoDeViaje*1.8
			IVA <- precioDeViaje*0.21
			Escribir "El precio de Viaje es de $", precioDeViaje, " + IVA (", IVA ")"
		FinSi
		Si (op>4) Entonces
			Escribir "Opción no válida"
		FinSi
	Hasta Que op=4
	Escribir "No se olvide de pasarle al cliente la cotización"

	//Mensaje Final
FinAlgoritmo
