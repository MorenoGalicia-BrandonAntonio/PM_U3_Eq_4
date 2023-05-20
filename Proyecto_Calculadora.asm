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
titulo_p db " Pregunta ",0
contenido_p db " Desea hacer algo mas? ",0

.code
	mainp1 PROC
		;Lógica del Programa

		println "              ---- Calculadora ---- "
		call crlf
		println "         --- Precione 1 para Sumar --- "
		call crlf
		println "         --- Precione 2 para Restar --- "
		call crlf
		println "        --- Precione 3 para Multiplicar --- "
		call crlf
		println "         --- Precione 4 para Dividir --- "
		call crlf
		println "Que desea hacer: "
		jmp compara

		pregunta:
		println "Desea hacer algo mas?"

		compara:
		call readint
		cmp eax, 2
		jl suma
		je resta
		cmp eax, 4
		jg divi
		jmp multi

		suma:
		println "suma"

		mov edx, offset contenido_p
		mov ebx, offset titulo_p
		; +6 = si    +7 = no
		call msgboxask
		call crlf
		cmp eax, 6
		jnz salir 
		jmp pregunta



		resta:
		println "resta"
		
		mov edx, offset contenido_p
		mov ebx, offset titulo_p
		; +6 = si    +7 = no
		call msgboxask
		call crlf
		cmp eax, 6
		jnz salir ;salta si es diferente
		jmp pregunta



		multi:
		println "multi"
		
		mov edx, offset contenido_p
		mov ebx, offset titulo_p
		; +6 = si    +7 = no
		call msgboxask
		call crlf
		cmp eax, 6
		jnz salir ;salta si es diferente
		jmp pregunta



		divi:
		println "divi"
		
		mov edx, offset contenido_p
		mov ebx, offset titulo_p
		; +6 = si    +7 = no
		call msgboxask
		call crlf
		cmp eax, 6
		jnz salir ;salta si es diferente
		jmp pregunta


		
		salir:
		exit	

	mainp1 ENDP

	END mainp1
