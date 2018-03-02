.PHONY:	up down status delete rm clean

status:
	@exec docker-compose ps

up:
	@echo "Starting Redis and ArangoDB..."
	@exec docker-compose up -d

down:
	@echo "Stopping Redis and ArangoDB..."
	@exec docker-compose stop -t 300

delete:	down
	@echo "Deleting ArangoDB data..."
	@rm -Rf db-data

rm:
	@docker-compose rm -f

clean:	delete rm
