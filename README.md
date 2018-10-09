# arm-syncthing
My dockerized syncthing container for ARM platform. Syncthing is a distributed file synchronisation solution. Visit https://syncthing.net.


Info:
-------------
Personally, I created this project to run this container on my Orange Pi with and take a daily backup of all my mobile data. You may wish to add your discovery servers for global discovery or maybe add relay server too.

The web interface is available on port 8080 and by default there is no authentication to access it.


Prerequisite:
-------------
Docker


Flags:
------------------

* -v /home/syncthing/syncthing_data:/tmp/

The syncthing container stores all the synchronised data inside /home/syncthing/syncthing_data folder. You may wish to mount this folder onto the host machine.


Usage:
------

Clone the repo and go to the repo folder:

```
git clone git@github.com:Rex-0x7CB/arm-syncthing.git
cd arm-syncthing
```

Build the docker image.

```
docker build -t synct .
```

Run the container

```
docker run -d -p 22000:22000 -p 22020:22020 -p 8080:8080 -p 21027:21027/udp --name syncthing -v /media/crypt/BackUp/:/home/syncthing/syncthing_data  synct
```
