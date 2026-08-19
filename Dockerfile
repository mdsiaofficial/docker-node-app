# eihane node er latest version 26.x.x + alpine linux er latest version 3.23 use korum for Docker image:
FROM node:26.7.0-alpine3.23

# jei directory te kam korbo 
WORKDIR /app

# first e jei file ta source theika docker container e copy korbo:
COPY package*.json ./

# now installing the node_modules using best practices commands for docker of npm: 
#  npm ci, npm ci --include=dev, npm ci --omit=dev, npm ci --production
RUN npm ci --include=dev

# ehon khali baki sob files folder ja ase copy koira docker er modde je /app dir banaisi. 
# oida te paste koira dite hoibo
COPY . .

# app er port ta koto hoibo eita define koia dite hoibo
EXPOSE 3000

# app ta run korte node er jei command lagbo
CMD ["npm", "start"]
