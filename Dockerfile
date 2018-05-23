FROM alpine:3.7

MAINTAINER Ed Sweeney <ed@onextent.com>
# cloned from the official mosquitto repo:
# https://github.com/eclipse/mosquitto/blob/master/docker/1.4.8/Dockerfile

LABEL Description="Mosquitto MQTT Broker"

RUN apk --no-cache add mosquitto=1.4.15-r0 && \
    mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log && \
    cp /etc/mosquitto/mosquitto.conf /mosquitto/config && \
    chown -R mosquitto:mosquitto /mosquitto

COPY docker-entrypoint.sh /
ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["/usr/sbin/mosquitto", "-c", "/mosquitto/config/mosquitto.conf"]

