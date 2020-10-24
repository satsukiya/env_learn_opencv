# Use an official Python runtime as a parent image
FROM centos:8

# Set the working directory to /var/src
WORKDIR /var/src

# Copy the current directory contents into the container at /var/src
ADD . /var/src

#basic update
RUN dnf -y update 
RUN dnf install -y curl unzip wget httpd
RUN dnf install -y mercurial ncurses-devel make gcc
RUN dnf install -y fontconfig

#Locale
RUN dnf -y install langpacks-ja

#vim
RUN dnf -y install vim-enhanced

#opencv
RUN dnf -y install libGL-devel

# set python environment
RUN dnf -y install python36
RUN pip3 install -U pip

# Install any needed packages specified in requirements.txt
RUN pip3 install -r requirements.txt

# Make port 80 available to the world outside this container
EXPOSE 80