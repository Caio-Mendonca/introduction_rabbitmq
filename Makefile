server:
	uvicorn main:app 

celery:
	celery -A main.celery worker --loglevel=info -Q universities,university
flower:
	celery -A main.celery flower --port=5555
start-docker:
	docker-compose up --build

update-requirements:
	pip freeze > requirements.txt
	
setup: 
	pip install -r requirements.txt