#Please replace <docker_id>4 with the DockerHub ID
#You can register at https://hub.docker.com/

#build the docker image, will take a while and this requires internet connection.
docker build -t default_sdk -f default.dockerfile .

#run "docker images" command
#And you will see this as expected output. 
#REPOSITORY                     TAG                 IMAGE ID            CREATED             SIZE
#default_sdk              latest              1067634b78dd        3 hours ago         361MB

#run the docker image to verify it works locally
#docker run -it default_sdk:latest

#Test the Python 
#>>> import datetime
#>>> datetime.datetime.now()

#should expect to see this
#datetime.datetime(2020, 3, 19, 10, 58, 41, 657177)

#push this to the repository (change this to your own path)
#docker tag default_sdk:latest <docker_id>/default_sdk:latest
#docker push <docker_id>/default_sdk:latest

