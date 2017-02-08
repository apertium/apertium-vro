
all:
	hfst-twolc -i vro-est.twol -o vro-est.twol.hfst
	hfst-lexc vro-est.lexc -o vro-est.lexc.hfst
	hfst-compose-intersect -1 vro-est.lexc.hfst -2 vro-est.twol.hfst -o vro-est.hfst
	hfst-fst2fst -w -i vro-est.hfst -o vro-est.hfstol
	@bash vro-est.sh

clean:
	rm *.hfst *.hfstol
