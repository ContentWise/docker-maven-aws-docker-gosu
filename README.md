# Docker Maven AWS Docker Gosu Image

A Docker image with Maven, AWS CLI, Docker client and Gosu installed.

## Docker Hub

This image is published to [Docker Hub](https://hub.docker.com/r/contentwisetv/maven-aws-docker-gosu/) via automated build.

## Usage

    docker run --rm -it -e LOCAL_USER_ID=`id -u` -v /var/run/docker.sock:/var/run/docker.sock -v `pwd`:/workdir -w /workdir contentwisetv/maven-aws-docker-gosu mvn clean deploy

## License

Author: Marco Miglierina <marco.miglierina@contentwise.tv>

Licensed under the Apache License V2.0. See the [LICENSE file](LICENSE) for details.