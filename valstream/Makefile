
ve=$(HOME)/ve/
valstream=$(ve)/bin/valstream

all:

t:
	echo '[ "foo", "bar" ]' | python __init__.py jsons as_tsv

slowly:
	echo hi there | python panya.py io.slowly 1

randomly:
	cat Makefile | $(HOME)/ve/bin/valstream io.slowly '1+random.random()' --imports=random

u:
	$(valstream)
