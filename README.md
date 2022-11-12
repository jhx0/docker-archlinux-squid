# docker-archlinux-squid

## Building
1. Clone/download this repository
2. Unpack/cd into the repository
3. Build the image
```
$ docker build --tag arch-proxy:1.0 . --build-arg username=USERNAME --build-arg password=PASSWORD
```
**USERNAME** and **PASSWORD** needs to be changed according to your needs!
4. Run the container
```
$ docker run -p 7777:7777 -d --name proxy arch-proxy:1.0
```
5. Change your proxy settings on your favorite browser to make use of the proxy service.

**NOTE:**   
The port 7777 was chosen at random. You can always change this in the **Dockerfile** if necessary.
