# Use the base image from Quay.io
FROM quay.io/stian-md/stian-md:latest

# Clone the repository from GitHub
RUN git clone https://github.com/Stianstian258/Stian-MD.git

# Change the working directory to the cloned repository
WORKDIR /Stian-MD

# Install dependencies using yarn (or npm if the repo uses npm)
RUN yarn install  # or RUN npm install if the repo uses npm

# Start the application
CMD ["npm", "start"]  # Replace with "yarn start" if you're using Yarn