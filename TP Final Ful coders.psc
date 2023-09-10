Algoritmo appDeViajes
	// Definir Variables
	Definir kmsRecorrido, litrosDeCombustible, consumoVehiculo, horasRecorridas, tiempoDeViaje, minutosRecorridos, costoDeViaje, precioDeViaje, valorDeCombustible, costoXHora, costoConductor, costoCombustible Como Real
	Definir OP, tipoDeCarga Como Entero
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
				transporte <-""
			FinSi
	FinSegun
	Si transporte = "auto" Entonces
		consumoVehiculo <- 10
		Sino
	FinSi
	Si transporte = "moto" Entonces
		consumoVehiculo <- 33.33
	FinSi
	Si transporte = "flete" Entonces
		consumoVehiculo<- 3.5
	FinSi
	Escribir "La carga irá en " transporte
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
	precioDeViaje <- costoDeViaje*1.8
	
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
	Hasta Que op=4
	Escribir "No se olvide de pasarle al cliente la cotización"

	//Mensaje Final
FinAlgoritmo
