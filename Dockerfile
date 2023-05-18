FROM nextcloud

RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
  && apt install -y ffmpeg \
  && apt-get clean -y && rm -rf /var/lib/apt/lists/*

# Use same entrypoint and CMD as nextcloud
ENTRYPOINT ["/entrypoint.sh"]
CMD ["apache2-foreground"]
