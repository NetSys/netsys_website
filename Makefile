#USERNAME = `whoami`
USERNAME=mwalls
REMOTE=$(USERNAME)@login.eecs.berkeley.edu:/project/cs/netsys/www/netsys/data/

build:
	bundle exec jekyll build

test:
	bundle exec jekyll serve --watch

push:
	scp -r ./build/* ${REMOTE}
