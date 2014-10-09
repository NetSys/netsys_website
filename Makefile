#USERNAME = `whoami`
USERNAME = rcs
REMOTE = $(USERNAME)@login.eecs.berkeley.edu:/project/cs/netsys/www/netsys/data/
OPTIONS = -r -v --exclude-from=.rsyncignore --perms --chmod=ug+w

pull:
	rsync $(OPTIONS) $(REMOTE) .

build:
	make -C bibtex2html/examples

push:
	rsync $(OPTIONS) --delete . $(REMOTE)
	rsync $(OPTIONS) --delete bibtex2html/examples/*.html $(REMOTE)/pubs/

push_scp:
	scp *.html *.css ${REMOTE}
	scp -r pics assets ${REMOTE}
	scp bibtex2html/examples/*.html ${REMOTE}/pubs/
