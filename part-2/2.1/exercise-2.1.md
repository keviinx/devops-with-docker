```console
keviindranr@ubuntu:~/simple-web-service$ touch text.log
keviindranr@ubuntu:~/simple-web-service$ docker compose up
[+] Running 2/2
 ✔ Network simple-web-service_default                 Created                                                                                                         0.7s
 ✔ Container simple-web-service-simple-web-service-1  Created                                                                                                         0.1s
Attaching to simple-web-service-simple-web-service-1
simple-web-service-simple-web-service-1  | Starting log output
simple-web-service-simple-web-service-1  | Wrote text to /usr/src/app/text.log
simple-web-service-simple-web-service-1  | Wrote text to /usr/src/app/text.log
simple-web-service-simple-web-service-1  | Wrote text to /usr/src/app/text.log
simple-web-service-simple-web-service-1  | Wrote text to /usr/src/app/text.log
simple-web-service-simple-web-service-1  | Wrote text to /usr/src/app/text.log
simple-web-service-simple-web-service-1  | Wrote text to /usr/src/app/text.log
simple-web-service-simple-web-service-1  | Wrote text to /usr/src/app/text.log
^CGracefully stopping... (press Ctrl+C again to force)
Aborting on container exit...
[+] Running 1/1
 ✔ Container simple-web-service-simple-web-service-1  Stopped                                                                                                           0.4s
canceled
```
