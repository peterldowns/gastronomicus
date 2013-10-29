.PHONY: server

server: env/bin/activate
	- . env/bin/activate && python manage.py runserver

env/bin/activate:
	# Create and activate a new virtualenv
	# and install all the requirements into it.
	- virtualenv env
	- . env/bin/activate && pip install -r requirements.txt
