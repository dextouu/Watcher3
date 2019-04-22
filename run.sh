#!/bin/sh

chown -R $UID:$GID /app/watcher3 /config/logs /config/plugins /config
exec su-exec $UID:$GID /sbin/tini -- python /app/watcher3/watcher.py -c /config/config.cfg -l /config/logs/ --db /config/database.sqlite --plugins /config/plugins/