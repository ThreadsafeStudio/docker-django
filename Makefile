build-docker:
	docker build -t pascalc/threadsafe-django .

run-docker:
	docker run -it --rm pascalc/threadsafe-django /bin/bash

push-docker:
	docker push pascalc/threadsafe-django
