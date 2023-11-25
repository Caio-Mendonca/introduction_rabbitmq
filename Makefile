server:
	uvicorn main:app 

rabbitmq:
	rabbitmq-server start

celery:
	celery -A main.celery_app worker --loglevel=info
flower:
	celery -A main.celery flower --port=5555
start-docker:
	docker-compose up --build

update-requirements:
	pip freeze > requirements.txt
	
setup: 
	pip install -r requirements.txt