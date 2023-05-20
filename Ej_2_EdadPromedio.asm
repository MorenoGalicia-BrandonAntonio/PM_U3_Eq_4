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
titulo_E22 db "Advertencia",0
contenido_E22 db "Deseas Visualizar el resultado de la suma",0

.code
	mainE2 PROC
		;Lógica del Programa
		mov eax, 0
		mov ebx, 0
		mov ecx, 0
		mov edx, 0

		println "Dame el Numero de Alumnos: "
		call readint
		mov ecx, eax
		push ecx

		ciclo1:
		println "Calificacion de Alumno: "
		call readint
		add ebx, eax 
		push ebx
		loop ciclo1

		mov edx, offset contenido_E22
		mov ebx, offset titulo_E22
		call msgboxask
		cmp eax, 6
		jnz salir
		mov eax, ecx
		call writedec

		salir:
		println "El Promedio es: "
		mov eax, 0
		pop ebx
		
		mov edx, 0
		pop ecx
		mov eax, ecx
		pop ebx

		;div 

		exit	

	mainE2 ENDP

	END mainE2
