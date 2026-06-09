FROM gitea/gitea:1.26

COPY --chown=root:root init.sh /usr/local/bin/init.sh

RUN sed -i 's/\r$//' /usr/local/bin/init.sh
RUN chmod +x /usr/local/bin/init.sh

USER git

ENTRYPOINT ["/usr/local/bin/init.sh"]
