ABELLA = ~/abella/abella

all: pts.sig pts.mod lib.thc wf_contexts.thc cr.thc eq_congr.thc cr_eq.thc typing_contexts.thc eq_typing.thc typing_inversion.thc pts.thc  

%.thc: %.thm
	$(ABELLA) $< -c $@

