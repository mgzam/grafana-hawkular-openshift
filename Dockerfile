FROM grafana/grafana

RUN grafana-cli plugins install hawkular-datasource && \
    chown -R 1001:0 /var/lib/grafana /var/log/grafana 

    
USER 1001
EXPOSE 3000

CMD /usr/sbin/grafana-server --homepath=/usr/share/grafana --config=/etc/grafana/grafana.ini
