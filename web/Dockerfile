# https://github.com/dockerfile/nginx

FROM dockerfile/nginx

# TODO: mount sites-enabled(?), configure

# https://www.digitalocean.com/community/tutorials/docker-explained-how-to-containerize-and-use-nginx-as-a-proxy

# Remove the default Nginx configuration file
RUN rm -v /etc/nginx/nginx.conf

# Copy a configuration file from the current directory
ADD nginx.conf /etc/nginx/

# Expose ports
EXPOSE 80

# Set the default command to execute
# when creating a new container
CMD service nginx start
