# NetSys Website

This repo houses the code for our website.

To build it you will need the following:
-ruby >= 1.9.0
-ruby gems
-make

Once you have them, run `gem install bundler` followed by `bundle install`.
That should install all of the appropriate ruby gems to build the site.

The site is built using [Jekyll](https://jekyllrb.com/)
and most of it lives in the `src` directory, which is layed out as follows:
- `src/_layouts` contains templates for various pages
- `src/_posts` contains markdown files for various posts
- `src/_bibliography` contains the bibtex file for the publications page
- `src/_data` contains yaml files that hold the data for the projects and people
  pages
- `src/*` in most cases, everything else does what its name suggests

The jekyll configuration lives in `_config.yaml` 

Make any changes you want to the site and generate the new html with `make
build`

Before pushing the site, run `make test` and check that the site looks right at
`http://localhost:4000`

Push the site to `netsys.cs.berkeley.edu` by running `make push`
