//Elabore un algoritmo para calcular el total de una compra en una gasolinera,
//donde se da descuento a sus clientes con membresía dependiendo de su tipo.
	//Las membresías y descuentos son las siguientes:
	//A: 10%
	//B: 15%
	//C: 30%
Algoritmo Ejercicio_11
	// definicion de variables
	Definir TotalCompra Como Real
	Definir TipoMembresia Como Entero
	Definir membresia Como Caracter
	
	// iniciando variables
	TotalCompra=0
	membresia=" "
	TipoMembresia=0
	DescuentoA=10//El valor es entero porque el signo de porcentaje es un sombilo reservado
	DescuentoB=15//El valor es entero porque el signo de porcentaje es un sombilo reservado
	DescuentoC=30//El valor es entero porque el signo de porcentaje es un sombilo reservado
	
	
	Escribir "Ingrese el total de la compra"
	leer TotalCompra
	
	Escribir "¿El cliente tiene membresia? (s/n) "
	Leer membresia

	si membresia="s" O membresia="S" Entonces//se valida que la respuesta positiva es "s" en mayuscula y minuscula
		Mientras (TipoMembresia<1 O TipoMembresia>3) Hacer// mientras el usuario no ingrese una de las opciones en pantalla, el algoritmo le mostrara las opciones	
			Escribir "Seleccione el tipo de membresilla del cliente"
			Escribir "    1-Membresilla A"
			Escribir "    2-Membresilla B"
			Escribir "    3-Membresilla C"
			Leer TipoMembresia
		Fin Mientras
		Segun TipoMembresia Hacer
			1:
				TotalCompra=TotalCompra-(TotalCompra*(DescuentoA/100))
				Escribir "El total de la compra con el 10% de descuento es: $ "Sin Saltar
				Escribir  TotalCompra
			2:
				TotalCompra=TotalCompra-(TotalCompra*(DescuentoB/100))
				Escribir "El total de la compra con el 15% de descuento es: $ "Sin Saltar
				Escribir  TotalCompra
			3:
				TotalCompra=TotalCompra-(TotalCompra*(DescuentoC/100))
				Escribir "El total de la compra con el 20% de descuento es: $ "Sin Saltar
				Escribir  TotalCompra
		Fin Segun
	SiNo 
		si (membresia="N" O membresia="n")//se valida que la respuesta negativa es "n" en mayuscula y miniscula
			Escribir "El total de la compra es: $ " Sin Saltar
			Escribir TotalCompra
		FinSi
	FinSi

FinAlgoritmo
