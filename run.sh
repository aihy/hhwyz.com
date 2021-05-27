#!/bin/bash

function serve {
	bundle exec jekyll serve -H 0.0.0.0
}
function deploy {
	bundle exec jekyll build && rsync -aPh --delete _site/* root@hhwyz.com:/root/html/
}

if [ $1 = "serve" ]; then
	serve
elif [ $1 = "push" ]; then
	git add . && git commit -m update && git push
	deploy
elif [ $1 = "deploy" ]; then
	deploy
fi
