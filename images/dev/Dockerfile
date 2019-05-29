FROM qidah/base:latest
ENV DOCKER_HOST='tcp://docker:2375'
RUN curl -s https://download.docker.com/linux/static/stable/x86_64/docker-18.09.4.tgz | tar xz --strip=1 -C /usr/local/bin/ docker/docker && \
    apk add --no-cache --update --virtual buildep gcc python3-dev musl-dev libffi-dev openssl-dev make && \
    helm plugin install https://github.com/chartmuseum/helm-push && \
    chmod +x /usr/local/bin/docker && \
    pip3 install docker-compose && \
    apk add --update --no-cache nodejs yarn npm && \
    apk del buildep
