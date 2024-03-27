FROM node:lts-alpine

# Set environment variables
ENV NODE_ENV=production

# Set working directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json (if exists)
COPY ["package.json", "package-lock.json*", "npm-shrinkwrap.json*", "./"]

# Install project dependencies
RUN npm install --only=production --silent

# Install Angular CLI as a development dependency
RUN npm install --save-dev @angular/cli

# Add Angular CLI bin directory to PATH
ENV PATH="/usr/src/app/node_modules/.bin:${PATH}"

# Copy the rest of the application code
COPY . .

# Expose the port that the app runs on
EXPOSE 5160

# Set permissions and user
RUN chown -R node /usr/src/app
USER node

# Command to start the application
CMD ["npm", "start"]
