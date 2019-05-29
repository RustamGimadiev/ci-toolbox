#! /usr/bin/env bash

REPOSITORY="qidah"
TAG=${TAG:-"latest"}

for project in base dev inf
  do
    echo docker build -t $REPOSITORY/$project:$TAG images/$project
    echo docker push $REPOSITORY/$project:$TAG
done
