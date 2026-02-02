# Tine Van lent's website - [tinevanlent.be](https://tinevanlent.be)

[![Build and test static site](https://github.com/asset-web/tinevanlent.be/actions/workflows/docker.yml/badge.svg)](https://github.com/asset-web/tinevanlent.be/actions/workflows/docker.yml)

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


### Bare OS X set up

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

 * Serve development site

		bundle exec jekyll serve

 * Build production site

		JEKYLL_ENV=production jekyll build

 * Update dependencies, specific or all gems.

 		bundle update jekyll
 		bundle update

### Docker set up

Build static site and run tests locally

```bash
docker build . -t tvl-web
docker run --rm tvl-web
```

#### Update jekll
```bash
docker compose up -d
# Update single gem
docker compose exec web bundle update jekyll
```


#### Update all packages or change Ruby/Bundler versions
```bash
rm Gemfile.lock
# Disable copying lock file 
docker compose build web
docker compose exec web bundle update --all
```

#### Run development jekll server
Run the below command and then visit: http://localhost:4000

```bash
docker compose up -d
```

## CI/CD

Gitflow workflow in use.  Travis CI used to build and test.  Deploy static Jekyll site to remote server is managed using Digital Ocean integration.
