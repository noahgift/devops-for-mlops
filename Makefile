install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	python -m pytest -vv --cov=main test_*.py

format:
	black *.py

lint:
	pylint --disable=R,C *.py

deploy:
	echo "deploy command goes here"

all: install lint test format deploy