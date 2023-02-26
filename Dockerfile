FROM python:3.9-alpine

# Creating Working 
WORKDIR /py_cronjob

# Install  dns-lexicon and curl
RUN pip install dns-lexicon[full]
RUN apk add --no-cache curl

# Copying the crontab file 
COPY crontab /etc/cron.d/crontab

# Executing crontab command
CMD ["/bin/sh", "-c", "crontab /etc/cron.d/crontab;crond -f"]