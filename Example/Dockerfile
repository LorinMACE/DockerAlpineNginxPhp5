#From our previous created image
FROM basics/alpine-php5-nginx

#If you have a new configuration, you can repush it from here
#COPY nginx.conf /etc/nginx/nginx.conf

#Copy website and set permissions (From the host to the container)
COPY www/ /www/
RUN chown -R www:www /www

# Expose the ports for nginx
EXPOSE 80

#Start container with entrypoint
CMD ["/bin/sh", "entrypoint.sh"]
