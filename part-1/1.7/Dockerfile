# Start from the ubuntu image
FROM ubuntu

# Use /usr/src/app as our workdir. The following instruction will be executed in this location.
WORKDIR /usr/src/app

# Install curl
RUN apt-get update && apt-get install -y curl

# Copy the script
COPY script.sh .

# Add execution permission during the build
RUN chmod +x script.sh

# When running docker run the command will be ./script.sh
CMD ./script.sh
