# pull official base image
FROM node:18-alpine

# set working directory
WORKDIR /pe-frontend-Wannes-VanPuyvelde

# install app dependencies
COPY package.json ./
COPY package-lock.json ./
RUN npm install --silent
RUN npm install react-scripts@3.4.1 -g --silent

# add app
COPY . ./

# start app
CMD ["npm", "start"]
