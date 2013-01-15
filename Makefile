USERNAME = `whoami`
REMOTE = $(USERNAME)@login.eecs.berkeley.edu:/project/cs/netsys/www/netsys/data/

pull:
	rsync -r -v --exclude-from=.rsyncignore $(REMOTE) .

push:
	rsync -r -v --exclude-from=.rsyncignore --delete . $(REMOTE)
