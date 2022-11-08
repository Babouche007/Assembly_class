			org 	$4
			
Vector_001	dc.l	Main
			org		$500
			
Main		movea.l	#STRING,a0
			movea.l	#STRING2,a1
			
RemoveSpace	movem.l	a0/a1/d0,-(a7)

\loop		move.b	(a0)+,d0
			beq		\quit
			
			cmpi.b	#' ',d0
			beq		\loop
			
			move.b	d0,(a1)+
			jmp		\loop
		
\quit		move.b	d0,(a1)+
			movem.l	(a7)+,a0/a1/d0
			illegal

			org		$550
			
STRING		dc.b	"1 * 2 *23- 30",0

			org		$700

STRING2		dc.b	"",0


