FROM ubuntu

# Install Java.
RUN \
  apt-get install software-properties-common &&\
  apt-get update && \
  add-apt-repository ppa:openjdk/ppa &&\
  apt-get install -y openjdk-7-jre && \
  rm -rf /var/lib/apt/lists/*

# Define working directory.
WORKDIR /data

# Define commonly used JAVA_HOME variable
ENV JAVA_HOME /usr/lib/jvm/java-7-openjdk-amd64

# Define default command.
CMD ["bash"]
