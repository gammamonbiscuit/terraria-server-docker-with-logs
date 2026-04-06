FROM hexlo/terraria-server-docker:latest
COPY log.sh .
RUN sed -i -r 's/(^.*-config server-config.conf)/rm -rfv \/var\/log\/terraria\n.\/log.sh \&\n\1 -logfile \/var\/log\/terraria/' init-TerrariaServer-*.sh