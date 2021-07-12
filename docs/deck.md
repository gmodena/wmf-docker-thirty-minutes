---
theme: gaia
size: 16:9
inlineSVG: true
footer: Gabriele Modena, 2021
---

# A thirty minutes intro to docker
## Gabriele Modena
### SWE @ Wikimedia Foundation

---
# Follow along

```bash
git clone git@github.com:gmodena/wmf-docker-thirty-minutes.git
```

Prerequisites
- Docker Engine (Linux).
- Docker Desktop (macOS/Windows).
- [Blubber](https://wikitech.wikimedia.org/wiki/Blubber).

---
# What's a docker?
A CLI to Linux capabilities and interfaces that we use to build, start and stop application containers.
![w:320 h:295](https://upload.wikimedia.org/wikipedia/commons/thumb/0/09/Docker-linux-interfaces.svg/512px-Docker-linux-interfaces.svg.png)
*User:Maklaan, Public domain, via Wikimedia Commons*

---
# Use cases
- Packaging and vendoring of complex dependencies.
- Developer productivity.
- Lightweight "virtualisation".
- Running unit tests and CI pipelines.

---
# Images, containers
- An **image** is a read-only file that contains all dependencies that an application needs to run (e.g. glibc, python, flask, nginx, bash).
- A **container** is a run-time environment (atop Linux capabilities) on which applications (and their deps) run isolated from the host OS while *sharing the same kernel*.
- [Docker Hub](https://hub.docker.com/) is an online repository of images, that can be fetched to run containers.

---
# Hello world
```
docker run hello-world
```
What did just happen?
Explore a Unix inspired cli: `docker ps|cp|kill|help`.

---
# Writing our own image

Before we pulled an existing image. Now we'll write on from scratch.
- We first need to define a `Dockerfile` with the required deps. It contains instructions to build Docker images.
- We then *build an image* with `docker build -t hello-pythonic-world .`
- And finally run a container with `docker run hello-pythonic-world`.
---
# Blubber: high level Dockerfile descriptions
- https://wikitech.wikimedia.org/wiki/Blubber.
- Developed at WMF and used as part of our CI pipelines.
- Supports for Node, Python and Golang runtimes.
---
# Blubber: hello-blubber.yaml
```
version: v4
base: docker-registry.wikimedia.org/wikimedia-stretch

variants:
  hello:
    entrypoint: [echo, "Hello, world!"]
```
---
# Blubber: build & run
- `blubber hello-blubber.yaml hello`
- `cat Dockerfile`
- `docker build --tag blubber-tutorial-hello-world --file - .`
- `docker run blubber-tutorial-hello-world:latest`
---
# Where to go next
- security of docker containers
- docker-compose
- kubernetes
