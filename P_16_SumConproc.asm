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
titulo_P16 db "Advertencia",0
contenido_P16 db "Deseas Visualizar el resultado de la suma",0

.code
	main16 PROC
		;Lógica del Programa
		
		println " Ingresa el Valor de A:"
		call readint ;eax
		println " Ingresa el Valor de B:"
		mov ecx, eax
		call readint ;eax
		; A=ecx  B=eax
		mov edx, offset contenido_P16
		mov ebx, offset titulo_P16
		add ecx, eax ;ecx
		call msgboxask ; el resultado se ira en eax
		; +6 = si    +7 = no
		cmp eax, 6
		jnz salir
		mov eax, ecx
		call writedec
		salir:

		exit	

	main16 ENDP

	END main16