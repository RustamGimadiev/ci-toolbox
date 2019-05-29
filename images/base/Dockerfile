FROM alpine:3.9.2

LABEL maintainer="Rustam Gimadiev <gimadiev.kzn@gmail.com>" \
      org.label-schema.description="This image used as base image for other CI images and contain: kubectl, helm, awscli, bash, python3" \
      org.label-schema.usage="Should be used inside of CI pipeline" \
      org.label-schema.schema-version="1.0"
RUN apk add --no-cache --update curl bash ca-certificates python3 git && \
    curl -s https://storage.googleapis.com/kubernetes-helm/helm-v2.13.1-linux-amd64.tar.gz | tar xz --strip=1 -C /usr/local/bin/ linux-amd64/helm && \
    curl -s https://storage.googleapis.com/kubernetes-release/release/v1.13.0/bin/linux/amd64/kubectl -o /usr/local/bin/kubectl && \
    curl -s https://amazon-eks.s3-us-west-2.amazonaws.com/1.12.7/2019-03-27/bin/linux/amd64/aws-iam-authenticator -o /usr/local/bin/aws-iam-authenticator  && \
    chmod +x /usr/local/bin/kubectl /usr/local/bin/aws-iam-authenticator  && \
    helm init --client-only && \
    pip3 install --upgrade pip && \
    pip3 install awscli

ENTRYPOINT /bin/bash
