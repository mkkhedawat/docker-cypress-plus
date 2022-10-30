FROM cypress/base:18.12.0

# metadata
LABEL maintainer="Manish K Khedawat"
LABEL email=writetomansa@gmail.com
LABEL description="Cypress docker image with additional utilities"

# configs

# install yum packages
RUN apt-get update && \
  apt-get install --no-install-recommends -y \
  git

# install npm packages
RUN npm install -g zx