
image: Dockerfile config/west.yml
	docker-compose up --build

board: config/nice60.conf config/nice60.keymap
	docker-compose up

clean:
	rm -r build/*
