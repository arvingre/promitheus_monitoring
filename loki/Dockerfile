FROM grafana/loki:2.6.1

USER root

COPY conf/loki-local-config.yaml /etc/loki/loki-local-config.yaml

CMD ["-config.file=/etc/loki/loki-local-config.yaml"]
#docker build -t harbor.tgceshi.com/loging/loki:pro-220905 ./loki/