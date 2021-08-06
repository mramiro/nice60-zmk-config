FROM zmkfirmware/zmk-build-arm:2.4
WORKDIR /code
COPY config/west.yml config/west.yml
RUN west init -l config
RUN west update
RUN west zephyr-export
CMD west build -s zmk/app -b $BOARD -- -DZMK_CONFIG=/code/config
