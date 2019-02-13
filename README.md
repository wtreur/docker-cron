Cron docker image
=================

Run cron in docker

## Usage
1. Create a file called `crontab` en add your crontab rules. For example:
    ```
    * * * * * echo "Hello world"
    ```
    
1. Create a docker file
    ```
    FROM wtreur/cron:latest

    ADD crontab /etc/cron.d/cron
    RUN crontab /etc/cron.d/cron
    ```

## Credits
Roughly based on [https://github.com/renskiy/cron-docker-image](https://github.com/renskiy/cron-docker-image)