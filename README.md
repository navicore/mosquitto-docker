<!-- ghmig:moved -->
> **This repository has moved to [https://git.navicore.tech/navicore/mosquitto-docker](https://git.navicore.tech/navicore/mosquitto-docker).**
>
> The GitHub copy is archived and no longer maintained.


```console
docker run -it -p 1883:1883 -p 9001:9001 -v $(pwd)/data:/mosquitto/data -v $(pwd)/mosquitto.conf:/mosquitto/config/mosquitto.conf navicore/mosquitto
```