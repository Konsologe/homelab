FROM gitea/gitea:1.26

COPY --chown=root:root init.sh /usr/local/bin/init.sh

RUN sed -i 's/\r$//' /usr/local/bin/init.sh
RUN chmod +x /usr/local/bin/init.sh

HEALTHCHECK --interval=30s --timeout=10s --start-period=30s --retries=3 \
  CMD wget --spider -q http://localhost:3000/api/healthz || exit 1

#HEALTHCHECK --interval=30s --timeout=10s --start-period=30s --retries=3 \
#  CMD curl -f http://localhost:3000/api/healthz || exit 1

ENTRYPOINT ["/usr/local/bin/init.sh"]

#USER git
