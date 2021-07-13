# wmf-docker-thirty-minutes
A thirty minutes hands on intro to docker. 

# Prerequisites

To follow along this tutorial you'll need a working installation of [Docker Desktop](https://www.docker.com/products/docker-desktop), [blubber](https://wikitech.wikimedia.org/wiki/Blubber), and some familiarity with the command line. Verify that docker is running with

```bash
docker info
```

# Documentation build
Documentation is rendered with [marpit](https://github.com/marp-team/marpit) and available online at https://nowave.it/wmf-docker-thirty-minutes/#1.

A `Dockerfile` is provided to build the material locally.
```bash
docker build -t build-wmf-docker-thirty-minutes .
```

Generate a slide deck in the container, and copy the html output
to the host.
```bash
container_id=$(docker run -it --rm --detach build-wmf-docker-thirty-minutes)
docker cp ${container_id}:/deck.html .
```
