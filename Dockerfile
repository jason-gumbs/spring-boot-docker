 #  ------------------------------
 # Instruction for Dockerfile to create a new image on top of the base image (ubuntu)
 # Using the base image ubuntu: latest
 # FROM gcc:latest
 FROM ubuntu:latest
 # Install the latest versions of the packages currently installed
 RUN apt update
 # Installing a GCC compiler onto a Docker image
 RUN apt-get -y install gcc
 # Copying .c files to the containers /usr/share directory
 COPY *.c /usr/share/
 #Set working directory where application will compile
 WORKDIR /usr/share
 # Compile .c application
 RUN gcc -o myapp hello.c
 # Execute My application
 CMD ["./myapp"]