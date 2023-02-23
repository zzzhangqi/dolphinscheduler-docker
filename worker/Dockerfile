ARG VERSION=3.1.2
FROM apache/dolphinscheduler-worker:${VERSION}

RUN apt-get update && \
    apt-get install -y --no-install-recommends python3 && \
    rm -rf /var/lib/apt/lists/*
