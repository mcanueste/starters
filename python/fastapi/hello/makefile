reg_url = mcanueste
img_name = $(reg_url)/fastapi-hello
tag = latest

# Builds the docker image 
#
# `tag` argument can be passed in order
# to add a specific suffix to the image
# (used for versioning). If not given,
# `latest` will be used by default.
#
# E.g. `make build tag=1` will create
# `fastapi-hello:1` image.
build:
	docker build -t $(img_name):$(tag) .

# Uploads the docker image
#
# Note: Requires user to login to the registry first.
#
# `tag` argument can be passed in order
# to add a specific suffix to the image
# (used for versioning). If not given,
# `latest` will be used by default.
#
# E.g. `make upload tag=1` will upload
# `fastapi-hello:1` image.
upload:
	docker push $(img_name):$(tag)

# Runs the docker image 
#
# `tag` argument can be passed in order
# to add a specific suffix to the image
# (used for versioning). If not given,
# `latest` will be used by default.
#
# E.g. `make run tag=1` will run
# `fastapi-hello:1` image.
run:
	docker run --rm -ti -p 8000:8000 $(img_name):$(tag)

