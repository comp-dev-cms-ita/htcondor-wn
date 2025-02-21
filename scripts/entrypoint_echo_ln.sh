#!/usr/bin/env bash

ln -s /cvmfs/grid.cern.ch/etc/grid-security/certificates /etc/grid-security/certificates && echo -n $POOL_PASSWORD > /etc/pwd/pool_password && /bin/bash -x /start.sh 
