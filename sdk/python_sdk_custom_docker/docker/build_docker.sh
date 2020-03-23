#note: please replace raymondlo84 with your own docker id

#build the docker image, will take a while and this requires internet connection.
docker build -t raymondlo84/disco_python_sdk -f disco.dockerfile .

#run "docker images" command
#And you will see this as expected output. 
#REPOSITORY                     TAG                 IMAGE ID            CREATED             SIZE
#raymondlo84/disco_python_sdk   latest              d9bf99007535        43 seconds ago      361MB
#python                         3.7-slim-buster     69afd9568c9d        8 days ago          179MB

#run the docker image to verify it works locally
#docker run -it raymondlo84/disco_python_sdk:latest

#Test the Python 
#>>> import datetime
#>>> datetime.datetime.now()

#should expect to see this
#datetime.datetime(2020, 3, 19, 10, 58, 41, 657177)

#push this to the repository (change this to your own path)
#docker push raymondlo84/disco_python_sdk:latest

