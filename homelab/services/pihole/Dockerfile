FROM pihole/pihole:2026.05.0

COPY --chown=root:root homelab.conf /etc/dnsmasq.d/homelab.conf
RUN chmod 0644 /etc/dnsmasq.d/homelab.conf

COPY --chown=root:root wildcard.conf /etc/dnsmasq.d/wildcard.conf
RUN chmod 0644 /etc/dnsmasq.d/wildcard.conf
