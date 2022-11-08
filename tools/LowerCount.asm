			org $4

Vector_001 	dc.l Main

			org $500

Main 		movea.l #STRING,a0 ; Initialise A0 avec l'adresse de la chaîne.

LowerCount 	clr.b	d0
			
loop		move.b (a0)+,d1
			beq		quit
			
			
			cmp.b	#'z',d1
			bgt		loop
			
			cmp.b	#'a',d1
			blt		loop

			addq.l	#1,d0
			bra 	loop
			
quit			
			illegal

			org $550

STRING 		dc.b "Cette chaine comporte 28 minuscules.",0
