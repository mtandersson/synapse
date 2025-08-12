FROM matrixdotorg/synapse:v1.136.0


RUN apt-get update && apt-get install -y \
  git \
  && rm -rf /var/lib/apt/lists/*

# RUN apk add --no-cache git

RUN pip install git+https://github.com/devture/matrix-synapse-shared-secret-auth

