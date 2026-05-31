FROM gitea/gitea:latest

COPY --chown=root:root init.sh /usr/local/bin/init.sh

RUN sed -i 's/\r$//' /usr/local/bin/init.sh
RUN chmod +x /usr/local/bin/init.sh

ENTRYPOINT ["/usr/local/bin/init.sh"]
