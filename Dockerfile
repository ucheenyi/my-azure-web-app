FROM nginx:alpine

# Copy your custom index.html and other web files
COPY index.html /usr/share/nginx/html/index.html
COPY . /usr/share/nginx/html/

# Create health endpoint
RUN echo 'healthy' > /usr/share/nginx/html/health

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
