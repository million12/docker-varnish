### Varnish Docker ###
#### Docker build on:

>   Centos 7 (polinux/centos7:latest)

>   Varnish 4.0.1-2

####Environmental variables: (with default settings)
> BACKEND_PORT 8080

> BACKEND_IP 127.0.0.1

> PORT 80

####Start the container example:
`docker run -d --name varnish --net host -e PORT=80 -e BACKEND_IP=127.0.0.1 -e BACKEND_PORT=8080 polinux/varnish:latest`

To be able to test if it works make sure you have some www server running under BACKEND_IP. 