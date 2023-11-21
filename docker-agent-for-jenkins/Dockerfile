FROM ubuntu:22.04

LABEL maintainer="Naveen Chevulamaddi <naveen.ch@gmail.com>"

# Install necessary packages in a single RUN command to reduce layers
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -yq --no-install-recommends \
        git \
        openssh-server \
        openjdk-17-jdk \
        openjdk-17-jre \
        maven \
        docker.io \
    && apt-get autoremove -y && apt-get clean && rm -rf /var/lib/apt/lists/*

# Configure SSH server
RUN sed -i 's|session    required     pam_loginuid.so|session    optional     pam_loginuid.so|g' /etc/pam.d/sshd && \
    mkdir -p /var/run/sshd

# Add Jenkins user and set password
RUN useradd -m -s /bin/bash jenkins && \
    echo "jenkins:jenkins" | chpasswd && \
    mkdir /home/jenkins/.m2

# Copy authorized keys
COPY .ssh/authorized_keys /home/jenkins/.ssh/authorized_keys

# Set ownership for Jenkins home directory
RUN chown -R jenkins:jenkins /home/jenkins

# Expose SSH port
EXPOSE 22

CMD ["/usr/sbin/sshd", "-D"]

