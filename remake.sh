docker container stop syncthing;
docker container rm syncthing;
docker image rm synct:latest;
docker build -t synct . ;
docker run -p 22000:22000 -p 22020:22020 -p 8080:8080 -p 21027:21027/udp --name syncthing -v /root/SyncT/data/:/home/syncthing/syncthing_data  synct
