FROM hexlo/terraria-server-docker:latest
WORKDIR ${TERRARIA_DIR}
COPY log.sh .
RUN sed -i -r 's/(^.*-config server-config.conf)/.\/log.sh \&\nsleep 1\n\1 -logfile/' init-TerrariaServer-amd64.sh
RUN sed -i -r 's/(^.*-config server-config.conf)/.\/log.sh \&\nsleep 1\n\1 -logfile/' init-TerrariaServer-arm64.sh
ENTRYPOINT [ "./init-TerrariaServer-arm64.sh" ]