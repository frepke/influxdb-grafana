#!/bin/bash -e

# Make directory writeable on container start
chmod 0777 /var/lib/grafana

exec /usr/bin/supervisord -c /etc/supervisor/conf.d/supervisord.conf
