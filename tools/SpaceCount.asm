			org $4

Vector_001 	dc.l Main

			org $500

Main 		movea.l #STRING,a0 ; Initialise A0 avec l'adresse de la chaîne.

SpaceCount 	clr.l 	d0
	

loop		move.b (a0)+,d0
			beq		quit
			
			
			cmp.b	#' ',d0
			beq		loop
			
			movea.w	d0,(a1)+
			
quit			
			illegal

			org $550

STRING 		dc.b "Cette chaine comporte 4 espaces.",0
