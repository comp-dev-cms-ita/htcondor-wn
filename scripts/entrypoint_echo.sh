#!/usr/bin/env bash

echo -n $POOL_PASSWORD > /etc/pwd/pool_password && /bin/bash -x /start.sh 
