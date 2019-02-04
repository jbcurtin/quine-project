#!/usr/bin/env bash

set -e
set -x

if [ "$1" == 'bootstrap-docs' ]; then
  if [ ! -d "env-docs" ]; then
    virtualenv -p $(which python3) env-docs
  fi
  source env-docs/bin/activate
  pip install -r build-tools/docs-requirements.txt
  # To learn more about how to make docs.
  #  https://github.com/squidfunk/mkdocs-material/
fi

if [ "$1" == 'deploy-docs' ]; then
  source env-docs/bin/activate
  cd docs
  rm -rf site
  mkdocs build
  mkdocs gh-deploy -r github/jbcurtin --force
  cd -
fi
if [ "$1" == 'serve-docs' ]; then
  source env-docs/bin/activate
  cd docs
  rm -rf site
  mkdocs serve -a 0.0.0.0:3000
  cd -
  exit 0
fi
