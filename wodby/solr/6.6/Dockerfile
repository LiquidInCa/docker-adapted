FROM wodby/solr:6.6

# Add label for CoScale monitoring
LABEL com.coscale.monitoring='[{"PluginType":"SOLR","Configuration":{"JMX HOSTNAME":["localhost"],"JMX PORT":["9999"]}}]'

# Delete old solr start command
RUN sed -i '/exec solr -f/d' /opt/docker-solr/scripts/solr-foreground && \
    # Add solr start command with JMX enabled
    echo 'exec solr -f -a -Dcom.sun.management.jmxremote -Djava.rmi.server.hostname=127.0.0.1 -Dcom.sun.management.jmxremote.port=9999 -Dcom.sun.management.jmxremote.authenticate=false -Dcom.sun.management.jmxremote.ssl=false "$@"' >> /opt/docker-solr/scripts/solr-foreground
