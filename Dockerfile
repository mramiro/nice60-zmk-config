FROM zmkfirmware/zmk-build-arm:2.4
WORKDIR /code
COPY scripts/rebuild.sh .
COPY config/west.yml config/west.yml
RUN west init -l config
RUN west update
RUN west zephyr-export
CMD [ "/bin/bash", "rebuild.sh" ]
