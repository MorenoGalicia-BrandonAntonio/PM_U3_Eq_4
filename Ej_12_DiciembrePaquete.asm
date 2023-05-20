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
	mainE12 PROC
		;Lógica del Programa
		
		println "Cuanto dinero Recibio en Diciembre: "
		call readint 

		cmp eax, 10000
		jl comp1
		cmp eax, 20000
		jl comp2
		cmp eax, 50000
		jl comp3
		jmp comp4

		comp1:
		println "Debe Comprar el Paquete D: una television, un par de zapatos, dos camisas y dos pantalones"
		jmp salir

		comp2:
		println "Debe Comprar el Paquete C: dos pares de zapatos, tres camisas y tres pantalones"
		jmp salir

		comp3:
		println "Debe Comprar el Paquete B: una grabadora, tres pares de zapatos, cinco camisas y cinco pantalones"
		jmp salir

		comp4:
		println "Debe Comprar el Paquete A: un modular, tres pares de zapatos, cinco camisas y cinco pantalones"

		salir:
		exit
	mainE12 ENDP

	END mainE12