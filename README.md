# building a busybox toy system for singularity and docker image for CI

Tru <tru@pasteur.fr>

## Why ?
- toy system for github actions
- build docker image, push to ghcr.io and re-use that docker image to create a singularity container pushed ghcr.io oras://
 
## Caveat
- playground, use at your own risk!
- `:main` tagged docker image
- `:latest` tagged singularity image

## Usage [![Docker and Singularity build](https://github.com/truatpasteurdotfr/singularity-docker-busybox/actions/workflows/docker-singularity-publish.yml/badge.svg)](https://github.com/truatpasteurdotfr/singularity-docker-busybox/actions/workflows/docker-singularity-publish.yml)
- Docker 
```
docker pull ghcr.io/truatpasteurdotfr/singularity-docker-busybox:main
```
- Singularity 
```
singularity run oras://ghcr.io/truatpasteurdotfr/singularity-docker-busybox:latest
```
