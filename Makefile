# Makefile for Docker NodeJS Postgres

include .env

NODE_UP := $(shell docker-compose ps | grep node)
REACT_UP := $(shell docker-compose ps | grep react)
POSTGRES_UP := $(shell docker-compose ps | grep postgres)

help:
	@echo ""
	@echo "usage: make COMMAND"
	@echo ""
	@echo "Commands:"
	@echo "  clean      Clean dependencies"
	@echo "  install    Create and start containers"
	@echo "  logs       Watch log output"
	@echo "  restart    Restart all containers"
	@echo "  start      Start all containers"
	@echo "  stop       Stop all services"
	@echo "  test       Run eslint and application unit tests "
	@echo "  uninstall  Stop and clear all services"
	@echo "  update     Update Node dependencies with yarn"

init:
	@docker run --rm -v $(shell pwd) acgomes68/alpine-node-react:latest yarn install

clean:
	@make react-up
	@docker-compose exec react rm -Rf app/node_modules

install:
	@make update
	@make start
	@make test

lint:
	@docker-compose exec react yarn eslint --fix src --ext .js

logs:
	@docker-compose logs -f

react-up:
	@if [ "$(REACT_UP)" = '' ]; then\
		echo "React is down";\
		docker-compose up -d react;\
	else\
		echo "React is up";\
	fi;

restart:
	@docker-compose restart

start:
	@docker-compose up -d

stop:
	@docker-compose down -v --remove-orphans

test:
	@make lint
	@make unit

uninstall:
	@make clean
	@make stop

unit:
	@docker-compose exec react yarn eslint --fix src --ext .js

update: init
	@docker run --rm -v $(shell pwd)/frontend acgomes68/alpine-node-react:latest yarn upgrade

.PHONY: clean test init
