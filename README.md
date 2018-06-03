
```console
docker run -it -p 1883:1883 -p 9001:9001 -v $(pwd)/data:/mosquitto/data -v $(pwd)/mosquitto.conf:/mosquitto/config/mosquitto.conf navicore/mosquitto
```
