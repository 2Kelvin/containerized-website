# Docker Containerized Website

Containerizing my static website using Docker and Nginx.
I used `nginx:alpine` base image, removed the default html file served in this image at location `/usr/share/nginx/html` (**my workdir**) and copied my html and css files in this working dir to serve my static website.

This was the image I built my website image with by running this command:
```bash
docker build -t rocketman02/my-website:v1 . 
```

Then ran a container from this image to serve my custom website like so:
```bash
docker run --name my-website -p 8012:80 rocketman02/my-website:v1
```

My website was successfully running at `http://localhost:8012/`
