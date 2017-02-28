#!/bin/bash
docker login -u="$DOCKER_USER" -p="$DOCKER_PASS"
export REPO=$DOCKER_USER/travis-doc
if [ "$TRAVIS_BRANCH" == "master" ]; then
  echo "latest"
else
  echo $TRAVIS_BRANCH
fi
echo $REPO:$TAG:$COMMIT
docker build -f Dockerfile -t $REPO:$COMMIT .
docker tag $REPO:$COMMIT $REPO:$TAG
docker tag $REPO:$COMMIT $REPO:travis-$TRAVIS_BUILD_NUMBER
docker push $REPO
