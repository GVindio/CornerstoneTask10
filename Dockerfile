# get bare minimum linux image
FROM node:alpine

# Define working directory
WORKDIR /app

# Copy package.json file to our app dir in container
COPY package*.json ./

# Install our dependencies
RUN npm install

# Copy other project files to our container
COPY . .
EXPOSE 3030
# Run a startup command when our container starts
CMD ["node", "index.js"]