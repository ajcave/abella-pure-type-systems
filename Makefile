ABELLA = ~/abella/abella

all: pts.sig pts.mod contexts.thm inversion.thm eq.thm cr.thm pts.thm
	${ABELLA} lib.thm -c lib.thc
	${ABELLA} wf_contexts.thm -c wf_contexts.thc
	${ABELLA} contexts.thm -c contexts.thc
	${ABELLA} eq.thm -c eq.thc
	${ABELLA} cr.thm -c cr.thc
	${ABELLA} inversion.thm -c inversion.thc
	${ABELLA} pts.thm -c pts.thc 
