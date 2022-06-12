#!/bin/bash

name=$(basename $PWD)

mkdir tests
mkdir ${name}

# initialise PDM
pdm init

# Prod requirements
pdm add loguru

# Dev dependancies
pdm add -dG dev  setuptools wheel pylint black pytest pytest-cov

# Basic python starting point

new_py_cli.sh

# Standard Makefile

cat > ./Makefile <<EOF
.PHONY: tests install update image

install:
    #curl -sSL https://raw.githubusercontent.com/pdm-project/pdm/main/install-pdm.py | python3 -
	pip3 install --user pdm
	pdm sync

update:
	pdm update -G dev
	pdm sync --clean

image:
	docker build -t $name .

tests:
	python -m pytest --cov=${name} tests/
EOF

cat > Readme.md <<EOF
# $name

## Setup

This project is using PDM to manage the dependencies. To get started just run the following command:

    make install

To add new dependencies run:

	pdm add <package>
EOF

cat > .editorconfig <<EOF
# EditorConfig is awesome: https://EditorConfig.org

# top-most EditorConfig file
root = true

# Unix-style newlines with a newline ending every file
[*]
end_of_line = lf
insert_final_newline = true

[*.{yml,yaml,json}]
indent_style = space
indent_size = 2

[*.py]
charset = utf-8
indent_style = space
indent_size = 4

[Makefile]
indent_style = tab
EOF

# Git setup
curl https://raw.githubusercontent.com/github/gitignore/master/Python.gitignore --output .gitignore
cat >> ./.gitignore <<EOF

# Project specific

__pypackages__/
.vscode/
EOF

git init
git add .
git commit -m "Initial commit of $1"
