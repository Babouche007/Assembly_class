			org 	$4
			
Vector_001	dc.l	Main
			org		$500
			
Main		movea.l	#STRING,a0

IsMaxError	move.l	a0,-(a7)
			clr.l	d1

\size		move.b	(a0)+,d0
			beq		\comp
			
			add.l	#1,d1
			jmp		\size
			
\comp		cmpi.b	#5,d1
			bhi		\false
			blo		\true
			
			jmp		\count
			
\count		move.l	(a7)+,a0
			move.l	a0,-(a7)
			
			move.b	(a0)+,d0
			cmpi.b	#'3',d0
			blo		\true
			bhi		\false
			
			move.b	(a0)+,d0
			cmpi.b	#'2',d0
			blo		\true
			bhi		\false
			
			move.b	(a0)+,d0
			cmpi.b	#'7',d0
			blo		\true
			bhi		\false
			
			move.b	(a0)+,d0
			cmpi.b	#'6',d0
			blo		\true
			bhi		\false
			
			move.b	(a0)+,d0
			cmpi.b	#'7',d0
			blo		\true
			bhi		\false
			
			jmp		\true
			
\false		ori.b	#%00000100,ccr
			jmp		\quit
	
\true		andi.b #%11111011,ccr
			jmp		\quit
			
\quit		move.l	(a7)+,a0
			illegal

			org		$700
			
STRING		dc.b	"327671",0
