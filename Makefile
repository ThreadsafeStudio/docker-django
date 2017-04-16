build-docker:
	docker build -t threadsafestudioab/django .

run-docker:
	docker run -it --rm threadsafestudioab/django /bin/bash

push-docker:
	docker push threadsafestudioab/django
