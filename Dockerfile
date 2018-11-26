FROM grafana/grafana

RUN grafana-cli plugins install hawkular-datasource && \

    /usr/sbin/grafana-server --homepath=/usr/share/grafana --config=/etc/grafana/grafana.ini
