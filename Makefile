ABELLA = ~/abella/abella

all: pts.sig pts.mod contexts.thm inversion.thm eq.thm cr.thm pts.thm
	${ABELLA} cr.thm -c cr.thc
	${ABELLA} contexts.thm -c contexts.thc
	${ABELLA} inversion.thm -c inversion.thc
	${ABELLA} eq.thm -c eq.thc
	${ABELLA} pts.thm -c pts.thc 