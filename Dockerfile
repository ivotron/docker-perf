FROM debian:stretch

RUN apt-get update && apt-get install -y linux-perf && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
ENTRYPOINT ["/usr/bin/perf"]
