install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

lint:
	docker run --rm -i hadolint/hadolint < Dockerfile

build:
	docker build -t s-o-question:latest .

run:
	docker run -p 8080:8080 s-o-question

deploy:
	export FLASK_APP=main.py
	flask run

run-kube:
	kubectl apply -f kube-hello-change.yaml

all: install lint

brun: build run

dockpose:
	docker-compose build
	docker-compose up