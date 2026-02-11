FROM nginx:alpine

# Remove default config
RUN rm /etc/nginx/conf.d/default.conf

# Copy our custom config to the main configuration location
COPY nginx.conf /etc/nginx/nginx.conf

# Create the cache directory and ensure permissions
RUN mkdir -p /tmp/nginx_cache && chmod 777 /tmp/nginx_cache

EXPOSE 8080