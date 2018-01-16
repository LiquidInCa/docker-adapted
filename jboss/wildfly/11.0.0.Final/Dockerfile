FROM jboss/wildfly:11.0.0.Final

# Add label for CoScale monitoring
LABEL com.coscale.monitoring='[{"PluginType":"JBOSS","Configuration":{"FILE":["\"/usr/share/jboss/standalone/log/access_log.YYYY-MM-DD\" \"%v %B %D \"%r\" %A %a %t %H %p %U %s %S %T\""],"JMX HOSTNAME":["localhost"],"JMX PORT":["9999"],"URL CHECK":["http://localhost"]}}]'

# Enable logs
# /opt/jboss/wildfly/standalone/configuration/standalone.xml
