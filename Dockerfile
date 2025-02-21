FROM ghcr.io/comp-dev-cms-ita/htcondor-dask-wn:v1.1.2

RUN mkdir /etc/pwd

RUN touch /etc/pwd/pool_password

RUN chmod 0600 /etc/pwd/pool_password

COPY 99_custom_config /etc/condor/config.d/99_custom_config 

COPY scripts/entrypoint_echo.sh /root/entrypoint_echo.sh

RUN chmod +x /root/entrypoint_echo.sh

ENTRYPOINT [ "/root/entrypoint_echo.sh" ]
