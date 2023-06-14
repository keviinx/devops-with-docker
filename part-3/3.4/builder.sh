#!/bin/sh

github_repo=$1
docker_hub_repo=$2
github_url=https://github.com/$github_repo

echo "Cloning $github_repo..."
git clone $github_url

echo "Logging in to Docker..."
cat ./DOCKER_PWD.txt | docker login -u $DOCKER_USER --password-stdin

repo_name=${github_repo#*/}
echo "Changing directory to $repo_name..."
cd $repo_name

echo "Building image and pushing image to Docker Hub..."
docker build ./../ -t $docker_hub_repo && docker push $docker_hub_repo:latest
echo "Cleaning up..."
cd .. && rm -rf $repo_name

echo "SUCCESS"
