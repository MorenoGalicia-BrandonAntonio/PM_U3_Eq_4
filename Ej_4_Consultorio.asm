TITLE NombrePrograma

;DESCRPICIÓN 
;Objetivo: Archivo de Ejemplo
;
; Autore(s):
;         Moreno Galicia Brandon Antonio

; Semestre: 8vo Semestre ISC 
;FIN DESCRPICIÓN

INCLUDE Irvine32.inc
INCLUDE macros.inc

.data
; Área de Declaración de Variables


.code
	mainE4 PROC
		;Lógica del Programa
		
		println "Bienvenidos al Consultorio de Dr Lorenzo T."
		println "Cual es tu Numero de Cita: "
		call readint

		cmp eax, 3 
		jl citas11
		jg citas2

		citas11:
		cmp eax, 2
		jl citas12
		jg citas13
		
		println "El Pago por su Cita es de: 200.00 Pesos"
		println "El Monto Total que a Pagado por su Tratamiento es de: 400.00 Pesos"
		exit
			
			citas12:
			println "El pago por su Primera Cita es de: 200.00 Pesos "
			exit

			citas13:
			println "El pago por su Cita es de: 200.00 Pesos"
			println "El Monto Total que a Pagado por su Tratamiento es de: 600.00 Pesos"
			exit

		citas2:
		cmp eax, 5
		jl citas21
		jg citas3

		println "El pago por su Cita es de: 150.00 Pesos"
		println "El Monto Total que a Pagado es de: 900.00 Pesos"
		exit

			citas21:
			println "El pago por su Cita es de: 150.00 Pesos"
			println "El Monto Total que a Pagado por su Tratamiento es de: 750.00 Pesos"
			exit

		citas3:
		cmp eax, 8
		jl citas31
		jg citas4

		citas31:
		cmp eax, 7
		jl citas32
		jg citas33

		println "El pago por su Cita es de: 100.00 Pesos"
		println "El Monto Total que a Pagado por su Tratamiento es de: 1100.00 Pesos"
		exit

			citas32:
			println "El pago por su Cita es de: 100.00 Pesos"
			println "El Monto Total que a Pagado por su Tratamiento es de: 1000.00 Pesos"
			exit

			citas33:
			println "El pago por su Cita es de: 100.00 Pesos"
			println "El Monto Total que a Pagado por su Tratamiento es de: 1200.00 Pesos"
			exit

		citas4:
		println "El pago por su Cita es de: 50.00 Pesos"
		sub eax, 8
		mov ebx, 50
		mul ebx
		println "El Monto Total que a Pagado por su Tratamiento es de: "
		add eax, 1200
		call writedec
		exit	

	mainE4 ENDP

	END mainE4
