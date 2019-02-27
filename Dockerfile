RUN apt-get -y update && apt-get install -y --no-install-recommends \
         wget \
         python \
         nginx \
         ca-certificates \
         supervisor \
    && rm -rf /var/lib/apt/lists/*

# Set up the program in the image
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf
COPY nginx.conf /etc/nginx/nginx.conf

COPY scripts/load_default_model.sh /opt/docker/bin

WORKDIR /opt/docker

ENTRYPOINT ["/usr/bin/supervisord", "-i"]
CMD ["serve"]

