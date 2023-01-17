# Rocky linux

## Getting started

This is a container for deploy and customize official Rocky linux qcow2.

This is also a specific development that include some prerequisites:
  - Have a network bridge configured
  - Want an additionnal disk (/data)
  - Must define a static ip

Public image available [here](https://hub.docker.com/r/tibhome/terraform-libvirt-rocky).

## Build container

Download you needed qcow2 image [here](https://download.rockylinux.org/pub/rocky/) (GenericCloud-Base) then copi it in image directory.

```bash
docker build --no-cache -t terraform-libvirt-rocky:develop .
```

## Run container

```bash
docker run --rm -it -v /var/run/libvirt/libvirt-sock:/var/run/libvirt/libvirt-sock terraform-libvirt-rocky:develop
```