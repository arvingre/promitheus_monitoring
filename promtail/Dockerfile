FROM grafana/promtail:2.6.1

USER root

COPY conf/promtail-docker-config.yaml /etc/promtail/promtail-config.yaml

CMD ["-config.file=/etc/promtail/promtail-config.yaml"]
#docker build -t harbor.tgceshi.com/loging/promtail:pro-220905 ./promtail/