FROM grafana/grafana:latest

USER grafana

ARG GF_INSTALL_PLUGINS="hawkular-datasource"

RUN if [ ! -z "${GF_INSTALL_PLUGINS}" ]; then \
    OLDIFS=$IFS; \
        IFS=','; \
    for plugin in ${GF_INSTALL_PLUGINS}; do \
        IFS=$OLDIFS; \
        grafana-cli plugins install ${plugin}; \
    done; \
fi
