Algoritmo calculadora
	Definir r Como Entero //Respuesta para ejecutar
	Escribir "Bienvenido, en esta Calculadora encontraras diferentes opción para operar."
	Repetir
	Escribir "A continuación encontraras las diferentes opciones:"
	Escribir "1. Suma"
	Escribir "2. Resta"
	Escribir "3. Multiplicación"
	Escribir "4. División"
	Escribir "5. Sumar todos los valores de la matriz"
	Escribir "6. Restar todos los valores de la matriz"
	Escribir "7. Suma de matrices"
	Escribir "8. Resta de matrices"
	Escribir "9. Triángulo con números"
	Escribir "10.Rectángulo con asteriscos"
	Escribir "11.Estadísticas en una lista de números"
	Escribir "Ingrese el número de su operación:"
	Leer opcion
	Segun opcion Hacer
		1:
			Definir cs, ns, suma Como Entero //Variables suma
			Escribir "¿Cuántos números deseas sumar?"
			Leer cs
			Para i <- 1 Hasta cs Con Paso 1 Hacer
				Escribir "Ingresa el número ", i, ":"
				Leer ns
				suma <- suma + ns
			Fin Para
			Escribir "La suma total es: ", suma
		2:
			Definir cr, nr, resta Como Entero//Variables Resta
			Escribir "¿Cuántos números deseas restar?"
			Leer cr
			Escribir "Ingresa el número 1:"
			Leer resta
			Para i <- 2 Hasta cr Con Paso 1 Hacer
				Escribir "Ingresa el número ", i, ":"
				Leer nr
				resta <- resta - nr
			Fin Para
			Escribir "La resta total es: ", resta
		3: 
			Definir cm, mr, multi Como Entero//Variables multiplicación
			Escribir "¿Cuántos números deseas multiplicar?"
			Leer cm
			Escribir "Ingresa el número 1:"
			Leer multi
			Para i <- 2 Hasta cm Con Paso 1 Hacer
				Escribir "Ingresa el número ", i, ":"
				Leer nm
				multi <- multi * nm
			Fin Para
			Escribir "La multiplicación total es: ", multi
		4:
			Definir dividendo, divisor, division Como Real//Variables de división
			Escribir "Ingrese el dividendo: "
			Leer dividendo
			Escribir "Ingrese el divisor: "
			Leer divisor
			division = dividendo/divisor
			Escribir "La división total es: ", division
		5:
			Definir n, m, sumam, matriz1 Como Entero //Variables para suma de matriz
			Escribir "Ingrese el tamaño de la matriz filas (n):"
			Leer n
			Escribir "Ingrese el tamaño de la columnas filas (m):"
			Leer m
			Dimension matriz1[n, m]
			// Llenar la matriz con valores ingresados por el usuario
			Para i <- 1 Hasta n
				Para j <- 1 Hasta m
					Escribir "Ingrese el valor para la posición [", i, ",", j, "]:"
					Leer matriz1[i, j]
				FinPara
			FinPara
			// Sumar todos los valores de la matriz
			Para i <- 1 Hasta n
				Para j <- 1 Hasta m
					sumam <- sumam + matriz1[i, j]
				FinPara
			FinPara
			//Tabla
			Para i <- 1 Hasta n
				Para j <- 1 Hasta m
					Escribir Sin Saltar "   ", matriz1[i, j], "   |"
				FinPara
				Escribir "" 
			FinPara
			// Mostrar la suma total
			Escribir "La suma total de la matriz es: ", sumam
		6:
			Definir n1, m1, restam, matriz2 Como Entero //Variables para resta de matriz
			Escribir "Ingrese el tamaño de la matriz filas (n):"
			Leer n1
			Escribir "Ingrese el tamaño de la columnas filas (m):"
			Leer m1
			Dimension matriz2[n1, m1]
			// Llenar la matriz con valores ingresados por el usuario
			Para i <- 1 Hasta n1
				Para j <- 1 Hasta m1
					Escribir "Ingrese el valor para la posición [", i, ",", j, "]:"
					Leer matriz2[i, j]
				FinPara
			FinPara
			// Inicializar con el primer valor de la matriz
			restam <- matriz2[1, 1]
			// Resta todos los valores de la matriz
			Para i <- 1 Hasta n1
				Para j <- 1 Hasta m1
					Si No (i = 1 Y j = 1) Entonces
						restam <- restam - matriz2[i, j]
					FinSi
				FinPara
			FinPara
			//Tabla
			Para i <- 1 Hasta n1
				Para j <- 1 Hasta m1
					Escribir Sin Saltar "   ", matriz2[i, j], "   |"
				FinPara
				Escribir "" 
			FinPara
			// Mostrar la resta total
			Escribir "La resta total de la matriz es: ", restam
		7:
			Definir conteo, m2, n2, p, matriz3 Como Entero
			Escribir "Ingrese la cantidad de matrices que desea operar:"
			Leer m2
			Escribir "Ingrese el tamaño de la matriz filas (n):"
			Leer n2
			Escribir "Ingrese el tamaño de la columnas filas (m):"
			Leer p
			Dimension matriz3[n2, p]
			Dimension matriz_suma[n2, p]
			Mientras conteo < m2 Hacer
				Escribir "Matriz #",conteo + 1
				// Llenar la matriz con valores ingresados por el usuario
				Para i <- 1 Hasta n2
					Para j <- 1 Hasta p
						Escribir "Ingrese el valor para la posición [", i, ",", j, "]:"
						Leer matriz3[i, j]
						matriz_suma[i, j] <- matriz_suma[i, j] + matriz3[i, j]
					FinPara
					FinPara
				//Tabla de matriz
				Para i <- 1 Hasta n2
					Para j <- 1 Hasta p
						Escribir Sin Saltar "   ", matriz3[i, j], "   |"
					FinPara
					Escribir "" 
				FinPara
				conteo <- conteo + 1;
			Fin Mientras
			//Tabla de suma de matrices
			Escribir "La suma de las Matrices es:"
			Para i <- 1 Hasta n2
				Para j <- 1 Hasta p
					Escribir Sin Saltar "   ", matriz_suma[i, j], "   |"
				FinPara
				Escribir "" 
			FinPara
		8:
			Definir conteo2, m3, n3, p1, matriz4 Como Entero
			Escribir "Ingrese la cantidad de matrices que desea operar:"
			Leer m3
			Escribir "Ingrese el tamaño de la matriz filas (n):"
			Leer n3
			Escribir "Ingrese el tamaño de la columnas filas (m):"
			Leer p1
			Dimension matriz4[n3, p1]
			Dimension matriz_resta[n3, p1]
			Mientras conteo2 < m3 Hacer
				Escribir "Matriz #",conteo2 + 1
				// Llenar la matriz con valores ingresados por el usuario
				Para i <- 1 Hasta n3
					Para j <- 1 Hasta p1
						Escribir "Ingrese el valor para la posición [", i, ",", j, "]:"
						Leer matriz4[i, j]
					FinPara
				FinPara
				//Resta de matrices
				Si conteo2 = 0 Entonces
					// Inicializar matriz_resta con la primera matriz
					Para i <- 1 Hasta n3
						Para j <- 1 Hasta p1
							matriz_resta[i, j] <- matriz4[i, j]
						FinPara
					FinPara
				Sino
					// Restar siguientes matrices
					Para i <- 1 Hasta n3
						Para j <- 1 Hasta p1
							matriz_resta[i, j] <- matriz_resta[i, j] - matriz4[i, j]
						FinPara
					FinPara
				FinSi
				//Tabla de matriz
				Para i <- 1 Hasta n3
					Para j <- 1 Hasta p1
						Escribir Sin Saltar "   ", matriz4[i, j], "   |"
					FinPara
					Escribir "" 
				FinPara
				conteo2 <- conteo2 + 1;
			Fin Mientras
			//Tabla de suma de matrices
			Escribir "La resta de las Matrices es:"
			Para i <- 1 Hasta n3
				Para j <- 1 Hasta p1
					Escribir Sin Saltar "   ", matriz_resta[i, j], "   |"
				FinPara
				Escribir "" 
			FinPara
		9:
			Definir filas Como Entero//Variables del triangulo
			
			Escribir "Ingrese el número de filas para el triángulo:";
			Leer filas;
			
			Para i <- 1 Hasta filas Con Paso 1 Hacer
				Para j <- (2 * i - 1) Hasta 1 Con Paso -2 Hacer
					Escribir Sin Saltar j, " ";
				FinPara
				Escribir ""; // Salto de línea para la siguiente fila
			FinPara
		10:
			Definir w Como Entero //Variables de cuadrado con *
			Escribir "Ingrese un número entero:"
			Leer w
			
			// Imprimir la primera fila de asteriscos
			Para i <- 1 Hasta w Hacer
				Escribir Sin Saltar "* "
			FinPara
			Escribir ""
			
			// Filas con solo dos asteriscos 
			Para i <- 2 Hasta w-1 Hacer
				Escribir Sin Saltar "* "
				Para j <- 2 Hasta w-1 Hacer
					Escribir Sin Saltar "  "
				FinPara
				Escribir "*"
			FinPara
			
			// última fila de asteriscos
			Para i <- 1 Hasta w Hacer
				Escribir Sin Saltar "* "
			FinPara
			Escribir ""
		11:
			Dimensionar  numeros[100] 
			Definir numero Como Real
			Definir indice Como Entero
			indice <- 1
			mayor <- -999999
			menor <- 999999
			conteoa <- 0
			conteob <- 0
			Escribir "Debe ingresar los valores que necesite, al momento de finalizar debe escribir -1 para finalizar"
			Repetir
				Escribir "Ingresa el número ", indice, ":"
				Leer numero
				Si numero <> -1 Entonces
					numeros[indice] <- numero 
					indice <- indice + 1
				FinSi
			Hasta Que numero = -1 o indice > 100
			// Lista de numeros
			Escribir "Los números ingresados son:"
			Para i <- 1 Hasta indice - 1 Con Paso 1 Hacer
				Escribir i, ") ", numeros[i]
				sumae <- sumae + numeros[i]
				promedio <- sumae / (indice - 1)
				//Numero mayor
				Si numeros[i] > mayor Entonces
					mayor <- numeros[i]
				FinSi
				//Número menor
				Si numeros[i] < menor Entonces
					menor <- numeros[i]
				FinSi
			Fin Para
			// Numero arriba del promedio
			Para i <- 1 Hasta indice - 1 Con Paso 1 Hacer
				Si numeros[i] > promedio Entonces
					conteoa <- conteoa + 1
				FinSi
			Fin Para
			//Número abajo del promedio
			Para i <- 1 Hasta indice - 1 Con Paso 1 Hacer
				Si numeros[i] < promedio Entonces
					conteob <- conteob + 1
				FinSi
			Fin Para
			//Respuestas
			Escribir "La suma total es: ", sumae
			Escribir "El promedio total es: ", promedio
			Escribir "El número mayor es: ", mayor
			Escribir "El número menor es: ", menor
			Escribir "Se encuentran ", conteoa, " números arriba del promedio"
			Escribir "Se encuentran ", conteob, " números abajo del promedio"
		De Otro Modo:
			Escribir "No es valido el numero que has ingresado"
	Fin Segun
	Escribir "Desea realizar una nueva operación: "
	Escribir "1. SI"
	Escribir "2. NO"
	Leer r
	Mientras que r = 1
FinAlgoritmo
