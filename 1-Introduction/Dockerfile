FROM node:14

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

EXPOSE 3000

CMD [ "node", "app.mjs" ]

# Steps to Start a new Container

# Docker build .

# docker run -p 3000:3000 imageId


# Steps to stop

# docker ps
# docker stop nameOfContainer

