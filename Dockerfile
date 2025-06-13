# The base image we are building on top of 
FROM node:20

# The working directorz we are building into
WORKDIR /usr

# Copz all files from outside the container, into the container
COPY package.json ./

#Install the Python/fastapi dependencies
RUN npm install

COPY . .

#Expo port 8000 to make the application accesible
EXPOSE 3000

#Define the command to run the FastAPI app
CMD ["node","index.js"]