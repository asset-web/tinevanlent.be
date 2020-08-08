# Tine Van lent's website - [tinevanlent.be](https://tinevanlent.be)

[![Build Status](https://travis-ci.org/asset-web/tinevanlent.be.svg?branch=master)](https://travis-ci.org/asset-web/tinevanlent.be)

## Development

### Linux set up

1. Install Ruby

		sudo apt-get install ruby-full build-essential zlib1g-dev

1. Configure Gem location

		echo '# Install Ruby Gems to ~/gems' >> ~/.bashrc
		echo 'export GEM_HOME="$HOME/gems"' >> ~/.bashrc
		echo 'export PATH="$HOME/gems/bin:$PATH"' >> ~/.bashrc
		source ~/.bashrc

1. Install Jekyll & Bundler

		# Check version requirements here https://pages.github.com/versions/
		gem install jekyll --version 3.8.5
		gem install bundler


### OS X set up

Prerequisite homebrew is installed

	brew install ruby
	echo 'export PATH="/usr/local/opt/ruby/bin:$PATH"' >> ~/.bash_profile
	gem install --user-install bundler jekyll
	echo 'export PATH="$HOME/.gem/ruby/2.7.0/bin:$PATH"' >> ~/.bash_profile


### Set up development site

	git clone git@github.com:asset-web/tinevanlent.be.git
	cd tinevanlent.be/

### Example Jekyll commands

 * Create new site with default theme

		jekyll new .

 * Serve developement site

		bundle exec jekyll serve

 * Build production site

		JEKYLL_ENV=production jekyll build

 * Example deployment

		cd _site
		rsync -r . username@host:/webroot/


## CI/CD

Gitflow workflow in use.  Travis CI used to build, test and deploy static Jekyll site to remote server.