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

# -------------------------------------------------------------------------------------

# 9-Two types of external data storage [Volumes]

# See list of volumes
# docker volume ls

# 1- Volume [Manages by Docker]  ---  [AnonymousVolumes, NamedVolumes]

# Named Volumes-- Great for data which is persistent and u need not to edit dierctly
# docker run -v my_volume_name:/path/in/container your-image-name
# To remove the name volume use [docker volume rm VOL_NAME]

# AnonymousVolumes  [Data lost once container is stoped]
# Volume["/app/feedback"]
# These volumes are automatically removed when we use (--rm) to run a container
# These volumes will remain if (--rm) is not used when container is stopped
# If restarted new volume will remain
# To remove the older volume use [docker volume rm VOL_NAME]

# 2- BindMounts [Manages by you]
# We define the path on the host machine
# Great for persistent and editable data
# docker run -v /path/on/host:/path/in/container your-image-name [-v $(pwd):/app]

# docker run -d -p 3000:80 --rm 
# -v feedback:/app/feedback 
# -v "/Users/sarthak/Desktop/Docker/3-ManagingDataAndVolumes:/app" 
# -v /app/node_modules  [To tell docker not to overwrite node_modules]
# feedback-node:volume 

# 3-
# To make a volume read only [use keyword ro]
# -v "/Users/sarthak/Desktop/Docker/3-ManagingDataAndVolumes:/app:ro" 

# 4- To create a volume for a container
# docker volume create name_of_volume

# 5- To remove a volume
# docker volume rm name_of_volume



# -------------------------------------------------------------------------------------

# 10- Docker Ignore
# Prevents unnecessary files from being sent to the Docker daemon
# Helps avoid accidentally including secrets or credentials
# Prevents changes in irrelevant files from invalidating the build cache

# -------------------------------------------------------------------------------------

# 11-Using env variable

# Mention like this in docker file
# ENV PORT=80

# We can also pass vaiable while run command
# docker run -d -p 3000:8000 --rm --env PORT=8000
# docker run -d -p 3000:8000 --rm --env-file ./.env

# -------------------------------------------------------------------------------------

# 12-Using args

# We can make arguments for a docker file

# ARG VERSION=latest
# FROM node:${VERSION}

# ARG PORT=3000
# EXPOSE ${PORT}

# docker build --build-arg VERSION=16 --build-arg PORT=8080 -t myapp .

# -------------------------------------------------------------------------------------