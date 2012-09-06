all:
clean:
	rm -fr build dist *.egg-info
	find . -name '*.pyc' -delete
scrub: clean
	rm -fr ds-ve x xx xx*

ve_path=$(abspath ds-ve)
ve_lib_dir=$(ve_path)/lib/python2.6/site-packages
python=$(ve_path)/bin/python

$(ve_path):
	virtualenv $@

# --root='/' --single-version-externally-managed 
install: $(ve_path)
	$(python) setup.py install 

pypi-upload:
	python setup.py register sdist upload
