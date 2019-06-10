# httpie

> Docker image with httpie and jq installed

---

[![License](http://img.shields.io/:license-mit-blue.svg)](http://doge.mit-license.org) [![Docker Stars](https://img.shields.io/docker/stars/blacktop/httpie.svg)](https://store.docker.com/community/images/blacktop/httpie) [![Docker Pulls](https://img.shields.io/docker/pulls/blacktop/httpie.svg)](https://store.docker.com/community/images/blacktop/httpie) [![Docker Image](https://img.shields.io/badge/docker%20image-66.4MB-blue.svg)](https://store.docker.com/community/images/blacktop/httpie)

## Getting Started

```
$ docker run -it --rm blacktop/httpie -b ifconfig.co/json

{
    "country": "United States",
    "country_eu": false,
    "country_iso": "US",
    "hostname": "lqwtx.com",
    "ip": "34.10.12.40",
    "ip_decimal": 39585,
    "latitude": 35,
    "longitude": 105
}
```

### Combine `httpie` and `jq`

```bash
$ docker run -it --rm --entrypoint=sh blacktop/httpie -c "http ifconfig.co/json | jq .ip"

"34.10.12.40"
```