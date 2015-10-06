# docker-nginx

Image prepared to serve PHP applications from a network-disabled environment.

Follow these steps:

1) Add your sites to the image
2) Start the container with Âdocker run -v /some/path:/var/run/nginx --net none pmakholm/nginx`
3) Use nginx on the host to proxy requests to unix:/some/site/nginx.sock

More documentation and examples to follow
