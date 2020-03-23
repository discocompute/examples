#Please replace <docker_id>4 with the DockerHub ID
#You can register at https://hub.docker.com/

#build the docker image, will take a while and this requires internet connection.
docker build -t disco_default_sdk -f default.dockerfile .

#run "docker images" command
#And you will see this as expected output. 
#REPOSITORY                     TAG                 IMAGE ID            CREATED             SIZE
#raymondlo84/disco_python_sdk   latest              d9bf99007535        43 seconds ago      361MB
#python                         3.7-slim-buster     69afd9568c9d        8 days ago          179MB

#run the docker image to verify it works locally
#docker run -it disco_default:latest

#Test the Python 
#>>> import datetime
#>>> datetime.datetime.now()

#should expect to see this
#datetime.datetime(2020, 3, 19, 10, 58, 41, 657177)

#push this to the repository (change this to your own path)
#docker tag disco_default <docker_id>/disco_default:latest
#docker push <docker_id>/disco_default:latest

