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
titulo_E5 db "Advertencia", 0
contenido_E5 db "Desea Agregar otra Tarjeta?", 0
contenido2_E5 db "Desea Usted Seleccionar la Tarjeta a Proporcionar a Credito", 0

.code
	mainE5 PROC
		;Lógica del Programa
		
		println "Cual es su Tipo de Tarjeta: "
		call readint	
		push eax
  
		tarjeta1:
		mov edx, offset contenido_E5
		mov ebx, offset titulo_E5
		call msgboxask ; el resultado se ira en eax
		; +6 = si    +7 = no
		cmp eax, 6
		jnz imprimir ;salta si es diferente a 6
		jmp comparar

		comparar:
		pop eax
		mov ebx, eax
		println "Cual es el Tipo de Tarjeta a Agregar: "
		call readint
		cmp eax, ebx
		jl tarjeta1
		mov ebx, eax
		push ebx
		jmp tarjeta1
			
		op2:
		mov edx, offset contenido2_E5
		mov ebx, offset titulo_E5
		call msgboxask ; el resultado se ira en eax
		; +6 = si    +7 = no
		cmp eax, 6
		jnz op3 ;salta si es diferente a 6
		jmp imprimir

		op3:
		println "Que Tarjeta Desea Elegir: "
		call readint
		jmp imprimir2

		imprimir:
		pop eax
		mov ebx, 4
		cmp eax, ebx
		jg op4
		push eax
		mov ecx, 20
		mul ecx
		println "Su Limite de Interes es de: "
		call writedec
		exit

			op4:
			pop eax
			println "Su Limite de Interes es de: 80%"


		imprimir2:
		

		exit	

	mainE5 ENDP

	END mainE5
