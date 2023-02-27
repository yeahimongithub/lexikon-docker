# Lexicon Docker image

This is a simple docker container to run [Lexicon](https://github.com/AnalogJ/lexicon) with cron.

The container includes an example which updates a domain-entry every minute utilizing credentials from environment variables. Execute it as follows:
``` sh
docker run \
 -e domainname=subdomain.domain.com \
 -e username=my@user.com \
 -e password=SomePassword \
 ghcr.io/yeahimongithub/lexikon-docker
```

You can also supply a custom crontab file via volume mount:
``` sh
docker run --mount type=bind,source=PathToFile,target=/etc/cron.d/crontab,readonly ghcr.io/yeahimongithub/lexikon-docker
```

Build the container from scratch via `docker build -t lexicon-cron .`.
