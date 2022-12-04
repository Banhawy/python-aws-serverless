install:
	# install commands
	pip install --upgrade pip &&\
		pip install -r requirements.txt
format:
	# format code
	black *.py mylib/*.py
lint:
	# flake8 or pylint
	pylint --disable=R,C *.py mylib/*.py
test:
	# test
	python -m pytest -vv --cov=mylib test_logic.py
build:
	# build container
	docker build . -t deploy-fastapi
run:
	docker run -p 127.0.0.1:8080:8080 deploy-fastapi
deploy:
	# deploy
all: install lint format test deploy