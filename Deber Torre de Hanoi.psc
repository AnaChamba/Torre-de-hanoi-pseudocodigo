Algoritmo Hanoi
	Escribir "TORRES DE HANOI";
	Escribir "Número de discos: 3","--->" ,"Mínimo de movimientos: 7";
	Escribir "Número de discos: 4","--->" , "Mínimo de movimientos: 15";
	Escribir "Número de discos: 5","--->" , "Mínimo de movimientos: 31";
	Escribir "Número de discos: 6","--->" , "Mínimo de movimientos: 63";
	Escribir "Número de discos: 7","--->" , "Mínimo de movimientos: 127";
	Escribir "Número de discos: 8","--->" , "Mínimo de movimientos: 255";
	Escribir ":::::::::::::::::::::::::::::::::::::::::::::::::::";
	Dimensión faro[3,10], totalDisco[3];
	
	Escribir "Escriba el número de dicos del 1 a 8:";
	Leer numDisco;
	
	
	
	Mientras numDisco<0 O numDisco>8 Hacer
		Escribir " Los discos deben ser mayores que ceero y menores que cinco:";
		Leer numDisco;
	FinMientras
	
	
	totalDisco[1]<-numDisco;
	totalDisco[2]<-0;
	totalDisco[3]<-0;
	
	Para i<-1 Hasta numDisco Hacer
		faro[1,i]<-numDisco-i+1
	FinPara
	
	
	movimiento<-0;
	Mientras totalDisco[3]<>numDisco Hacer
		Limpiar Pantalla;
		
		Para i<-1 Hasta 3 Hacer 
			Escribir "TORRE", i;
			Si totalDisco[i]=0 Entonces
				Escribir "";
			SiNo
				Para j<-totalDisco[i] Hasta 1 Con Paso -1 Hacer
					Segun faro[i,j] Hacer
						1: Escribir "                   **"
                        2: Escribir "                 ******"
                        3: Escribir "               **********"
                        4: Escribir "             **************"
                        5: Escribir "           *****************"
                        6: Escribir "         **********************"
                        7: Escribir "       **************************"
                        8: Escribir "     ******************************"
					Fin Segun
				FinPara
			FinSi
			Escribir "..................................................";
			Escribir "";					
		FinPara
		
		
		Escribir "Mover desde la torre";
		Leer torre1;
		Escribir "Hacia la torre";
		Leer torre2;
		
		Si torre1<1 O torre1>3  O torre2<1 O torre2>3 Entonces
			Escribir "Desplazamiento no aceptado"
			Esperar Tecla;
		SiNo
			Si totalDisco[torre1]=0 Entonces
				Escribir "Desplazamiento no válido";
				Esperar Tecla;
			SiNo
				discomover<-faro[torre1, totalDisco[torre1]];
				puedemover<-verdadero;
				
				Si totalDisco[torre2]<>0 Entonces
					Si faro[torre2, totalDisco[torre2]]<discomover Entonces
						puedemover<-falso;
					FinSi
				FinSi
				Si puedemover Entonces
					movimiento<-movimiento+1;
					totalDisco[torre2]<-totalDisco[torre2]+1;
					faro[torre2, totalDisco[torre2]]<-discomover;
					totalDisco[torre1]<-totalDisco[torre1]-1;
				SiNo 
					Escribir "Desplazamiento No Valido";
					Esperar tecla;
				FinSi
			FinSi
		FinSi
	FinMientras 
	
	
	
	Escribir "Excelente-->", movimiento;
	
	
FinAlgoritmo
