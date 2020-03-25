# Dis.co's Default Docker Image

This is the default docker image that allows you to run jobs on Disco with the Python SDK. 

## Build Docker Image

Simply run the given build script

```
sh build_docker.sh
```

## Verify and Test

And you will see this as expected output for example. 

```
REPOSITORY                     TAG                 IMAGE ID            CREATED             SIZE
default_sdk              latest              1067634b78dd        3 hours ago         361MB
```

And you can run the docker image interactively to verify it works locally.

```
docker run -it default_sdk:latest
```

Then, you can test the Python with this sample code 

```
>>> import datetime
>>> datetime.datetime.now()
```

You should expect to see an output similar to this.
```
datetime.datetime(2020, 3, 19, 10, 58, 41, 657177)
```

## Push Image to DockerHub

This will upload the image to the DockerHub repository. Please change <docker_id> this to your own DockerHub ID. 

```
docker tag default_sdk:latest <docker_id>/default_sdk:latest
docker push <docker_id>/default_sdk:latest
```
