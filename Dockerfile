FROM contentwisetv/maven-gosu:3.5.2-jdk-8
LABEL maintainer="marco.miglierina@contentwise.tv"
ARG DOCKER_VERSION="17.12.1-ce"
ARG AWSCLI_VERSION="1.14.52"

RUN apt-get update && apt-get install -y \
        python-pip && \
    rm -rf /var/lib/apt/lists/*

RUN pip install \
        awscli==${AWSCLI_VERSION}

RUN curl -L https://download.docker.com/linux/static/stable/x86_64/docker-${DOCKER_VERSION}.tgz | tar -xz -C /usr/local/bin --strip 1

COPY entrypoint.sh /usr/local/bin/entrypoint.sh
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
CMD ["echo","-e","Example usage:\n\n\tdocker run --rm -it -e LOCAL_USER_ID=`id -u` -v /var/run/docker.sock:/var/run/docker.sock -v `pwd`:/workdir -w /workdir contentwisetv/maven-aws-docker-gosu mvn clean deploy\n"]
