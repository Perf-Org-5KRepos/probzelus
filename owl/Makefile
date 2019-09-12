ZELUC=zeluc -copy
ZLLIB=$(shell $(ZELUC) -where)
INFERLIB=../inference


all: byte opt owl_distribution.zci

.phony: byte opt

byte:
	dune build zelus_owl.cma

opt:
	dune build zelus_owl.cmxa

%.zci: %.zli
	$(ZELUC) -I $(INFERLIB) $<

clean:
	dune clean
	-rm -f *.zci
	-rm -f zelus_owl.cma zelus_owl.cmxa
cleanall: clean
	rm -f *~