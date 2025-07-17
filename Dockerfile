# Use official lightweight nginx image
FROM nginx:alpine

# Remove the default nginx welcome page
RUN rm -rf /usr/share/nginx/html/*

# Copy your index.html and tips folder into nginx html directory
COPY ./index.html /usr/share/nginx/html/index.html
COPY ./tips /usr/share/nginx/html/tips

# Expose port 80 to the outside world
EXPOSE 80
