Building the image:

$ docker build --tag arch-proxy:1.0 . --build-arg username=test --build-arg password=1234

(Change the username and password!)

Running the container:

$ docker run -p 7777:7777 -d --name proxy arch-proxy:1.0

Enjoy!
