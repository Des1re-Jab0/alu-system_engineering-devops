# Load balancer

Adds redundancy to the web stack with a second web server and an HAProxy load balancer.

## Files
- `0-custom_http_response_header`: configures Nginx to send an `X-Served-By` header with the server hostname (web-01 and web-02).
- `1-install_load_balancer`: installs HAProxy on lb-01 and distributes traffic to web-01 and web-02 with roundrobin.
