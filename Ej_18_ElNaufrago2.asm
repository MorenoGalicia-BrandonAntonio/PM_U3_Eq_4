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
var1_E19 dword 0 ;el numero de hambuegesas a comprar
titulo_E3 db "Advertencia",0
contenido_E3 db "Desea Pagar Con Tarjeta",0

.code
	mainE18 PROC
		;Lógica del Programa
		
		intro:
		println "Bienvenidos a Hamburguesas al Pastor" 
		println "Que Hamburguesas Desa Pedir:"
		println "1.- Hamburguesas Sencilla 20 pesos"
		println "2.- Hamburguesas Dobles 25 pesos"
		println "3.- Hamburguesas Tiple 30 pesos"
		call readint
		cmp eax, 2
		jl par1
		jg par3
		jmp par2

		par1:
		println "Cantas Hamburguesas Desa:"
		call readint
		mov ebx, 20
		mul ebx
		add var1_E19, eax
		println "Desea Algo Mas:"
		println "1 si, 2 no"
		call readint
		cmp eax, 2
		jl intro
		jmp tarjeta

		par2:
		println "Cantas Hamburguesas Desa:"
		call readint
		mov ebx, 25
		mul ebx
		add var1_E19, eax
		println "Desea Algo Mas:"
		println "1 si, 2 no"
		call readint
		cmp eax, 2
		jl intro
		jmp tarjeta

		par3:
		println "Cantas Hamburguesas Desa:"
		call readint
		mov ebx, 30
		mul ebx
		add var1_E19, eax
		println "Desea Algo Mas:"
		println "1 si, 2 no"
		call readint
		cmp eax, 2
		jl intro
		jmp tarjeta

		tarjeta:
		mov edx, offset contenido_E3
		mov ebx, offset titulo_E3
		call msgboxask ; el resultado se ira en eax
		; +6 = si    +7 = no
		cmp eax, 6
		jnz salir
		mov eax, var1_E19
		mov ebx, 10
		mul ebx
		mov edx, 0
		mov ebx, 100
		div ebx
		add eax, var1_E19

		println "El Pago Total Sera de: "
		call writedec

		salir:
		

	mainE18 ENDP

	END mainE18
