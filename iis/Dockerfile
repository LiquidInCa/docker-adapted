FROM microsoft/iis

RUN powershell Set-WebConfigurationProperty -Filter System.Applicationhost/Sites/SiteDefaults/logfile -Name LogExtFileFlags \
        -Value "cs-uri-stem,cs-uri-query,sc-status,sc-bytes,cs-bytes,time-taken,cs-host"

EXPOSE 8000

LABEL com.coscale.monitoring='[{"PluginType":"IIS","Configuration":{"FILE":["\"C:\\\\inetpub\\\\logs\\\\LogFiles\\\\W3SVC1\\\\\" \"cs-method cs-uri-stem cs-uri-query sc-status sc-bytes cs-bytes time-taken cs-host\""],"URL CHECKS":["http://localhost"]}}]'
