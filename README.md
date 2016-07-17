# docker-rpi-node

A Raspberry Pi / ARMv7 compatible Docker image with Node.js and Cross-build support

## Usage

Create your `Dockerfile` as follows:

```
FROM fstehle/rpi-node:4

RUN [ "cross-build-start" ]

RUN ...

RUN [ "cross-build-end" ]
```

This will enable you to build the Docker image on a x86 machine, eg. DockerHub. 

## Links

* [Building ARM containers on any x86 machine, even DockerHub](https://resin.io/blog/building-arm-containers-on-any-x86-machine-even-dockerhub/)
