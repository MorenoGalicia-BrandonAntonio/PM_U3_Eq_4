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
vector_4 dword 10,20,30,40,50

.code
	mainP44 PROC
		;Lógica del Programa
		
		mov ecx, sizeof vector_4 ;sieof solo funciona co bytes  
		; o se divide o se da el valor de cuantos son
		mov esi, 0

		ciclo:
		mov eax, vector_4[esi]
		call writedec
		call crlf
		add esi, 4
		loop ciclo

		call writedec
		

		exit	

	mainP44 ENDP

	END mainP44
