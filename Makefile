ABELLA = ~/abella/abella
 
all: lib.thc wf_contexts.thc cr.thc eq_congr.thc cr_eq.thc typing_contexts.thc eq_typing.thc typing_inversion.thc subject_reduction.thc  

clean:
	rm *.thc

%.thc: %.thm
	$(ABELLA) $< -c $@

