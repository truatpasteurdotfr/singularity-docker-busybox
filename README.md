# building a busybox toy system for singularity and docker image for CI

Tru <tru@pasteur.fr>

## Why ?
- toy system for github actions
- build docker image from dockerhub registry and push to ghcr.io with proper tags
- build singularity container from dockerhub registry and push to oras://ghcr.io with proper tags 
- build docker image, push to ghcr.io and re-use that docker image to create a singularity container pushed ghcr.io oras://
- 
## Caveat
- playground, use at your own risk!
- `:main` tagged docker image
- `:latest` tagged singularity image

## Usage
- Docker [![Docker build](https://github.com/truatpasteurdotfr/singularity-docker-busybox/actions/workflows/docker-publish.yml/badge.svg)](https://github.com/truatpasteurdotfr/singularity-docker-busybox/actions/workflows/docker-publish.yml)
```
docker pull ghcr.io/truatpasteurdotfr/singularity-docker-busybox:main
```

- Singularity [![Singularity build](https://github.com/truatpasteurdotfr/singularity-docker-busybox/actions/workflows/singularity-publish.yml/badge.svg)](https://github.com/truatpasteurdotfr/singularity-docker-busybox/actions/workflows/singularity-publish.yml)
```
singularity run oras://ghcr.io/truatpasteurdotfr/singularity-docker-busybox:latest
```
