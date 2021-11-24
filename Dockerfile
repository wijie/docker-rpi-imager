FROM ubuntu:latest

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get -yq install \
        libarchive13 \
        libcurl3-gnutls \
        libqt5core5a \
        libqt5dbus5 \
        libqt5gui5 \
        libqt5network5 \
        libqt5qml5 \
        libqt5widgets5 \
        libssl1.1 \
        qml-module-qtquick2 \
        qml-module-qtquick-controls2 \
        qml-module-qtquick-layouts \
        qml-module-qtquick-templates2 \
        qml-module-qtquick-window2 \
        qml-module-qtgraphicaleffects \
        dosfstools \
        wget && \
    wget -P /tmp https://downloads.raspberrypi.org/imager/imager_latest_amd64.deb && \
    dpkg -i /tmp/imager_latest_amd64.deb && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

    ENTRYPOINT ["rpi-imager"]
