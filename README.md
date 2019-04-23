# Watcher3

Watcher is an automated movie NZB & Torrent searcher and snatcher. You can add a list of wanted movies and Watcher will automatically send the NZB or Torrent to your download client. Watcher also has basic post-processing capabilities such as renaming and moving.
                                        
**This image not contains root process**

## Configuration
### Environments
* UID : Choose uid for launch watcher3 (default : 991)
* GID : Choose gid for launch watcher3 (default : 991)

### Volumes
* /config : Configurations files are here
* /app/watcher/userdata : Userdata are here
* /downloads : Downloads files are here
* /movies : Movies are here

### Ports
* 9090

## Usage
### Speed launch
```shell
docker run -d -p 9090 dextou/Watcher3
```
URI access : http://XX.XX.XX.XX:9090

### Advanced launch
```shell
docker run -d -p 9090 \
	-v /app/watcher/userdata:/app/watcher/userdata \
  -v /app/watcher/config:/config \
  -v /downloads:/downloads \
  -v /movies:/movies \
	-e UID=1001 \
	-e GID=1001 \
	dextou/Watcher3
```
URI access : http://XX.XX.XX.XX:9090

