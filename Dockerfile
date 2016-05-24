# Dockerfile to create a docker image
FROM  172.30.128.107:8000/teamsun/node-ppc64le

# Add files to the image
RUN mkdir -p /opt/nodejs
ADD . /opt/nodejs
WORKDIR /opt/nodejs

# Expose the container port
EXPOSE 5000

ENTRYPOINT ["node", "index.js"]
