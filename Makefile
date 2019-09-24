.PHONY: run rebuild clean-docker clean-signal

run:
	docker-compose up

rebuild:
	docker-compose build --no-cache

clean-docker:
	docker-compose down --rmi all

clean-signal:
	rm -fr Signal/*
