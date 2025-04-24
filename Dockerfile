# Use official Node.js base image
FROM node:18

# Set the working directory inside the container
WORKDIR /app

# Clone your GitHub repository
RUN git clone https://github.com/Stianstian258/Stian-MD.git

# Move into the cloned directory
WORKDIR /app/Stian-MD

# Install dependencies using Yarn
RUN yarn install

# Start the bot using Yarn
CMD ["yarn", "start"]