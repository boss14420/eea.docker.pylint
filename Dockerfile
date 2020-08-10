FROM thorstenhans/helm3
MAINTAINER "EEA: IDM2 A-Team" <eea-edw-a-team-alerts@googlegroups.com>

RUN apt-get update && apt-get install -y jq && rm -rf /var/lib/apt/lists/*
