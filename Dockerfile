FROM nginx:alpine

# Create a simple HTML page
RUN echo '<html><body><h1>Hello from Container!</h1><p><a href="/health">Health Check</a></p></body></html>' > /usr/share/nginx/html/index.html
RUN echo 'healthy' > /usr/share/nginx/html/health

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
