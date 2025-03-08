FROM node:14


# All Commands of Docker 


# docker ps [To get list of containers] 
# docker images [To get list of images]

# 0- How to build/create an image
# Docker build .

# 1-Steps to Start a new Container
# docker run -p 3000:80 imageId  [Run in attached mode by default.Can't do anything in terminal. Will give console]
# docker run -p -d 3000:80 imageId  [Run in detachhed mode by default.Can do anything in terminal]
# 3000->local machine port
# 80-> docker port
# docker run -p --rm 3000:80 imageId [ Automatically remove the container when stopped]

# 2-To start a conatiner with interactive shell
# docker run -it imageId [i for interaction t will create terminal]
# docker start -a -i imageId [a for attaching i for interaction ]


# 3-Steps to stop
# docker stop nameOfContainer


# 4- To start an exiting stopped container

# docker start nameOfContainer [Run in detachhed mode by default.Can do anything in terminal]
# docker attach nameOfContainer [To get attach to the container]
# docker start -a nameOfContainerTo start dierctly in attach mode

# 5- To see logs
# docker logs nameOfContainer [To see past logs]
# docker logs -f nameOfContainer [To get past logs and getting attached to see upcoming logs]

# 6- To get image info
# docker image inspect imageId

# 7-Copying Files into and From a container

# docker cp dummy/.test.txt containerName:/test [Copies file text.txt from dummy folder to test folder in container]
# docker cp containerName:/test dummy  [Copy entire test folder from container to dummyn folder]


# 8- Names and tag

# Giving name to a docker container
# docker run --name my-container-name your-image-name

# Giving name and tag to a docker image
# docker build -t name:tag .   [New Image]
# docker tag image_id name:tag  [Existing Image]