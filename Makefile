USERNAME=rcs
REMOTE=$(USERNAME)@login.eecs.berkeley.edu:/project/cs/netsys/www/netsys/data/

pull:
	rsync -r -v --exclude-from=.rsyncignore $(REMOTE) .

build:
	make -C bibtex2html/examples

push:
	rsync -r -v --exclude-from=.rsyncignore --delete . $(REMOTE)
	rsync -r -v --delete bibtex2html/examples/*.html $(REMOTE)/pubs/
