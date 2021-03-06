# arm-syncthing
My dockerized syncthing container for ARM platform. Syncthing is a distributed file synchronization solution. Visit https://syncthing.net. The purpost of creating this image was a project I created on the weekend. You can read about the project here:
https://crackerscreed.org/crypt-a-personal-cloud


Info:
-------------
Personally, I created this project to run this container on my Orange Pi and take a daily backup of all my mobile data. You may wish to add your discovery servers for global discovery or maybe add relay server too.

The web interface is available on port 8080 and by default there is no authentication to access it.


Prerequisite:
-------------
Docker


Flags:
------------------

* -v /tmp:/home/syncthing/syncthing_data

The syncthing container stores all the synchronised data inside /home/syncthing/syncthing_data folder. You may wish to mount this folder onto the host machine.


Usage:
------

Clone the repo and go to the repo folder:

```
git clone https://github.com/Rex-0x7CB/Crypt-arm-syncthing.git
cd Crypt-arm-syncthing
```

Build the docker image.

```
docker build -t synct .
```

Run the container

```
docker run -d -p 22000:22000 -p 22020:22020 -p 8080:8080 -p 21027:21027/udp --name syncthing -v /media/crypt/BackUp/:/home/syncthing/syncthing_data  synct
```
