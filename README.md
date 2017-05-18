# packer-docker-ee

Packer template for Docker Enterprise Edition host

Build with
```
    packer build \
      -var 'docker_ee_url=YOUR_DOCKER_EE_URL' \
      centos-7-ami.json 
```
