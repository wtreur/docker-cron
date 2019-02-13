Cron docker image
=================

Run cron in docker

## Usage
Create a docker file

```
FROM wtreur/cron

ADD crontab /etc/cron.d/cron
RUN crontab /etc/cron.d/cron
```

## Credits
Roughly based on [https://github.com/renskiy/cron-docker-image](https://github.com/renskiy/cron-docker-image)