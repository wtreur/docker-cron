#!/usr/bin/env bash

crond -L /var/log/cron.log

# trap SIGINT and SIGTERM signals and gracefully exit
trap "echo \"stopping cron\"; kill \$!; exit" SIGINT SIGTERM

# start "daemon"
while true
do
    cat /var/log/cron.log & wait $!
done