.PHONY: env

env:
	- virtualenv env
	- . env/bin/activate

deps: env
	- pip install -r requirements.txt

server: deps
	python manage.py runserver


