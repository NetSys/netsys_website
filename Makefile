USERNAME = `whoami`
#USERNAME=mwalls
USERNAME=silvery
REMOTE=$(USERNAME)@watson.millennium.berkeley.edu:/project/cs/netsys/www/netsys/data/
EDGECENTER_REPO=../edgecenter_website

build:
	bundle exec jekyll build

test:
	bundle exec jekyll serve --watch

push:
	rsync -avzP ./build/ ${REMOTE}

pull:
	rsync -avzP ${REMOTE} ./build/

sync_ec:
	rsync -avzP ./src/_data ${EDGECENTER_REPO}/src/
	rsync -avzP ./src/_bibliography ${EDGECENTER_REPO}/src/
