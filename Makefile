USERNAME = `whoami`
#USERNAME=mwalls
USERNAME=silvery
REMOTE=$(USERNAME)@watson.millennium.berkeley.edu:/project/cs/netsys/www/netsys/data/
EDGECENTER_REMOTE=$(USERNAME)@watson.millennium.berkeley.edu:/project/cs/netsys/www/edgecenter/data/

build:
	bundle exec jekyll build

test:
	bundle exec jekyll serve --watch

push:
	rsync -avzP ./build/ ${REMOTE}

edgecenter:
	rsync -avzP ./build/ ${REMOTE}

pull:
	rsync -avzP ${REMOTE} ./build/
