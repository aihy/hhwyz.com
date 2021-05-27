#!/bin/bash

function serve {
	bundle exec jekyll serve -H 0.0.0.0
}
function push {
	bundle exec jekyll build && rsync -aPh --delete _site/* root@hhwyz.com:/root/html/
}

if [ $1 = "serve" ]; then
	serve
elif [ $1 = "push" ]; then
	push
fi
