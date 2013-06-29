###########################################################################

# Customization: you must update the BIBFILES variable.
BIBDIR = ../../bibs
BIBFILES = ${BIBDIR}/minlan.bib \
	   ${BIBDIR}/barath.bib \
	   ${BIBDIR}/ali.bib \
	   ${BIBDIR}/kyriakos.bib \
	   ${BIBDIR}/scott.bib \
	   ${BIBDIR}/sylvia.bib \
	   ${BIBDIR}/justine.bib \
	   ${BIBDIR}/aurojit.bib \
	   ${BIBDIR}/colin.bib \
	   ${BIBDIR}/scott_marshall.bib

#BIBFILES = ${BIBDIR}/*bib

###########################################################################

# TODO: set BGPHOME automatically
BWBIN = ../bin

html: HTML

HTML: abstracts index.html byauthor.html

index.html:
	${BWBIN}/bwconv.pl -format=bibtex,htmlpubs -outopts=withyears -headfoot index-headfoot.html -to $@ -filter '! (defined($$rec{"omitfromcv"}) || (lc($$rec{"TYPE"}) eq "lecture") || (defined($$rec{"crossrefonly"}) && ! defined($$rec{"inlined-crossref"})))' ${BIBFILES}

bytopic.html:
	${BWBIN}/bwconv.pl -format=bibtex,htmlsummary -headfoot bytopic-headfoot.html -categories research-index-categories -sort category -to $@ -filter '! (defined($$rec{"omitfromcv"}) || (lc($$rec{"TYPE"}) eq "lecture") || (defined($$rec{"crossrefonly"}) && ! defined($$rec{"inlined-crossref"})))' ${BIBFILES}
	html-update-toc $@

# Creates *-abstract.html files.
abstracts:
	${BWBIN}/bwconv.pl -format=bibtex -outformat=htmlabstract -outopts=withbibtex -to abstracts-unsplit.html -linknames link-names -filter '! (defined($$rec{"omitfromcv"}) || (lc($$rec{"TYPE"}) eq "lecture") || (defined($$rec{"crossrefonly"}) && ! defined($$rec{"inlined-crossref"})))' ${BIBFILES}
	${BWBIN}/htmlabstract-split.pl -headfoot abstract-headfoot.html abstracts-unsplit.html
	rm abstracts-unsplit.html

byauthor.html:
	${BWBIN}/make-author-pages.pl authors author-urls byauthor-headfoot.html ${BIBFILES} > $@

.PHONY: abstracts index.html bytopic.html byauthor.html
