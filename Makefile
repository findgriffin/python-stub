
build: style types test

install:
	pip3 install -r requirements.txt

style:
	flake8

types:
	mypy .

test:
	coverage run -m unittest discover
	coverage html
	coverage report --fail-under=90

deploy:	build git-clean
	echo "Deploying with a `git push`"
	git push
	
git-clean:
	git diff-index --quiet HEAD
	test -z "$(git status --porcelain)"

run:
	./run.py

clean:
	rm -rf **/__pycache__
	rm -rf **/*.pyc
