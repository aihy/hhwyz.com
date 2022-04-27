#!/bin/bash -x

function serve {
	jekyll serve -H 0.0.0.0
}
function deploy {
	JEKYLL_ENV=production jekyll build && rsync --delete -aPh _site ubuntu@152.70.119.236:/home/ubuntu/hhwyz/
}

if [ $1 = "serve" ]; then
	serve
elif [ $1 = "push" ]; then
	git add . && git commit -m $2 && git push
	deploy
elif [ $1 = "deploy" ]; then
	deploy
fi
