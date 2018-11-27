FROM ubuntu:latest

EXPOSE 40401

# Install dependencies
RUN apt-get update && apt-get install -y wget sudo

# Download rnode installer
RUN wget https://github.com/rchain/rchain/releases/download/v0.7.1/rnode_0.7.1_all.deb -o /root/rnode_0.7.1_all.deb

# Install rnode
RUN cd /root && sudo apt-get install -y ./rnode_0.7.1_all.deb

ENTRYPOINT ["rnode"]
