.PHONY: env

server: deps
	- python manage.py runserver

deps:
	# Create and activate a new virtualenv
	# and install all the requirements into it.
	- virtualenv env
	- . env/bin/activate
	- pip install -r requirements.txt
