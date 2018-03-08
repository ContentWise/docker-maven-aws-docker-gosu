#!/bin/bash

# Add local user
# Either use the LOCAL_USER_ID if passed in at runtime or
# fallback

USER_ID=${LOCAL_USER_ID:-9001}

useradd --shell /bin/bash -u $USER_ID -o -c "" -M -d $HOME user

chown user:user $HOME
if [ -e /var/run/docker.sock ]; then 
    chown user:user /var/run/docker.sock
fi

exec /usr/local/bin/gosu user "$@"
