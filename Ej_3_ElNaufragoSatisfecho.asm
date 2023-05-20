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
titulo_E3 db "Advertencia",0
contenido_E3 db "Desea Pagar Con Tarjeta",0

.code
	mainE3 PROC
		;Lógica del Programa
		
		println "Bienvenidos a Hamburguesas al Pastor" 
		println "Cuantas Hamburguesas Desa Ordenar: "
		call readint
		push eax
		println "Que Tipos de Hamburguesas Desea"

		println "(1)Hamburguesas Sencillas: 20.00 Pesos"
		println "(2)Hamburguesas Dobles: 25.00 Pesos"
		println "(3)Hamburguesas Triples: 30.00 Pesos"

		call readint
		cmp eax, 2

		jg tipo3 ;si es mayor
		Jl tipo1 ;si es menor
		jmp tipo2 ;salto incondicional 

		tipo3:
		mov ebx, 30
		pop eax
		mul ebx
		push eax
		mov edx, offset contenido_E3
		mov ebx, offset titulo_E3
		call msgboxask ; el resultado se ira en eax
		; +6 = si    +7 = no
		cmp eax, 6
		jnz continuar2
		pop eax
		add eax, 5
		jmp continuar


		tipo1:
		mov ebx, 20
		pop eax
		mul ebx
		push eax
		mov edx, offset contenido_E3
		mov ebx, offset titulo_E3
		call msgboxask ; el resultado se ira en eax
		; +6 = si    +7 = no
		cmp eax, 6
		jnz continuar2 
		pop eax
		add eax, 5
		jmp continuar


		tipo2:
		mov ebx, 25
		pop eax
		mul ebx
		push eax
		mov edx, offset contenido_E3
		mov ebx, offset titulo_E3
		call msgboxask ; el resultado se ira en eax
		; +6 = si    +7 = no
		cmp eax, 6
		jnz continuar2
		pop eax
		add eax, 5
		jmp continuar

		continuar2:
		pop eax
		println "El Precio Total es de: "
		call writedec
		exit

		continuar:
		println "El Precio Total es de: "
		call writedec
		exit	

	mainE3 ENDP

	END mainE3
