FROM node:lts-buster

# Install system dependencies and global packages
RUN apt-get update && \
  apt-get install -y \
  ffmpeg \
  imagemagick \
  webp && \
  npm install -g yarn pm2 && \
  apt-get upgrade -y && \
  rm -rf /var/lib/apt/lists/*

# Clone the repository
RUN git clone https://github.com/Stianstian258/Stian-MD
WORKDIR /Stian-MD

# Install dependencies
COPY package.json .
RUN yarn install --legacy-peer-deps

# Copy all remaining files
COPY . .

EXPOSE 5000

# Use PM2 to run the yarn start script
CMD ["yarn", "docker"]
