# Multi-arch Docker image builder for [beancount/fava](https://github.com/beancount/fava)

[![GitHub tag (latest by date)](https://img.shields.io/github/v/tag/maxromanovsky/docker-fava)](https://github.com/maxromanovsky/docker-fava)
[![Docker Image Version (latest semver)](https://img.shields.io/docker/v/maxromanovsky/fava)](https://hub.docker.com/r/maxromanovsky/node-fava)
![Docker Image (latest) CI](https://github.com/maxromanovsky/docker-fava/workflows/Docker%20Image%20(latest)%20CI/badge.svg)
![Docker Image (release) CI](https://github.com/maxromanovsky/docker-fava/workflows/Docker%20Image%20(release)%20CI/badge.svg)

## Configuration

| Environment variable name | Description | Defaults |
|-------------------------|-----------|--------|
| `BEANCOUNT_FILE` | Path to `*.beancount` file | |
| `FAVA_OPTIONS` | Additional Fava options | |

## References
https://github.com/beancount/fava/blob/master/contrib/docker
https://pypi.org/project/fava/

## Local build
### Prepare docker multiarch
```bash
docker buildx ls
docker buildx create --name multiarch --use
```

### Build image
```bash
export FAVA_VERSION=1.14
docker buildx build --platform linux/amd64,linux/arm/v7 --build-arg VERSION=$FAVA_VERSION -t maxromanovsky/fava:${FAVA_VERSION} --push .
```
