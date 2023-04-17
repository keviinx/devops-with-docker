```console
keviindranr@ubuntu:~$ docker run devopsdockeruh/simple-web-service:ubuntu
Unable to find image 'devopsdockeruh/simple-web-service:ubuntu' locally
ubuntu: Pulling from devopsdockeruh/simple-web-service
5d3b2c2d21bb: Pull complete
3fc2062ea667: Pull complete
75adf526d75b: Pull complete
965d4bbb586a: Pull complete
4f4fb700ef54: Pull complete
Digest: sha256:d44e1dce398732e18c7c2bad9416a072f719af33498302b02929d4c112e88d2a
Status: Downloaded newer image for devopsdockeruh/simple-web-service:ubuntu
Starting log output
Wrote text to /usr/src/app/text.log
Wrote text to /usr/src/app/text.log
Wrote text to /usr/src/app/text.log
Wrote text to /usr/src/app/text.log
Wrote text to /usr/src/app/text.log
^Ckeviindranr@ubuntu:~$ docker start brave_germain
brave_germain
keviindranr@ubuntu:~$ docker exec -it brave_germain bash
root@8064f6ddadc6:/usr/src/app# tail -f ./text.log
2023-04-17 07:27:22 +0000 UTC
2023-04-17 07:27:24 +0000 UTC
Secret message is: 'You can find the source code here: https://github.com/docker-hy'
```
