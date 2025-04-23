FROM quay.io/stian-md/stian-md:latest
RUN git clone https://github.com/Stianstian258/Stian-MD/tree/main/
WORKDIR /root/LyFE/
RUN yarn install
CMD ["npm", "start"]