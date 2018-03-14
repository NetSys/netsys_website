USERNAME = `whoami`
#USERNAME=mwalls
REMOTE=$(USERNAME)@watson.millennium.berkeley.edu:/project/cs/netsys/www/netsys/data/

build:
	bundle exec jekyll build

test:
	bundle exec jekyll serve --watch

push:
	rsync -avzP ./build/ ${REMOTE}
