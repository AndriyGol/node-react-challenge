# Use the official Node.js image as the base image
FROM node:20

# Create and set the working directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package*.json .

# Install dependencies
# RUN npm install --only=production
RUN npm install --only=production

RUN npm install esbuild --global

# Copy the rest of the application code
COPY . .

# Build the application
RUN npm run build

# Create a non-root user and switch to it
RUN useradd -m appuser
USER appuser

# Expose the port the app runs on
EXPOSE 3000

# Start the application
# should be CMD ["npm", "start"]. Need to break npm start into two commands
CMD ["node", "dist/server.js"]
