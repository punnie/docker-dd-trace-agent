FROM ubuntu:14.04

RUN set -x \
    && apt-get update \
    && apt-get install --no-install-recommends -y apt-transport-https \
    && apt-get -y clean \
    && apt-get -y autoremove \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*


RUN set -x \
    && echo 'deb https://apt.datadoghq.com/ stable main' > /etc/apt/sources.list.d/datadog.list \
    && apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com:80 C7A7DA52 \
    && apt-get update \
    && apt-get install --no-install-recommends -y ca-certificates datadog-agent \
    && apt-get -y clean \
    && apt-get -y autoremove \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

EXPOSE 8126/tcp
