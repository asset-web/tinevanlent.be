#!/usr/bin/env bash
set -ev # halt script on error

JEKYLL_ENV=production bundle exec jekyll build
bundle exec htmlproofer ./_site --assume-extension --check-html --ignore-status-codes "429"
