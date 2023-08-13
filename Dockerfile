FROM nextcloud

RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
  && apt install -y ffmpeg \
  && apt-get clean -y && rm -rf /var/lib/apt/lists/*
