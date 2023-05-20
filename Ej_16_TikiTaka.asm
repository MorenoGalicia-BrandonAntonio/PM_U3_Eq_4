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
var1_E16 dword 0
var2_E16 dword 0
var3_E16 dword 0

.code
	mainE16 PROC
		;Lógica del Programa
		
		mov eax, 10
		call randomrange
		mov ecx, eax
		mov edx, eax

		ciclo:
			mov eax, 2000
			call randomrange
			push eax
		loop ciclo


		mov ecx, edx

		ciclo2:
			pop eax
			cmp eax, 501
			jl sumar1
			cmp eax, 1001
			jl sumar2
			inc var3_E16
			jmp salir

			sumar1:
			inc var1_E16 
			jmp salir
			sumar2:
			inc var2_E16
			jmp salir

			salir:
		loop ciclo2

		println "Se Realizaron un Total de Ventas: "
		mov eax, edx
		call writedec
		call crlf
		println "Ventas Mayores a 1000: "
		mov eax, var1_E16
		call writedec
		call crlf
		println "Ventas Mayores a 500 y Menores a 1000: "
		mov eax, var2_E16
		call writedec
		call crlf
		println "Ventas Menores a 500: "
		mov eax, var3_E16
		call writedec
		call crlf

		exit	

	mainE16 ENDP

	END mainE16
