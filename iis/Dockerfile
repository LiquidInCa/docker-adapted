FROM microsoft/iis

ADD log.ps1 .
RUN powershell.exe .\log.ps1

LABEL com.coscale.monitoring='[{"PluginType":"IIS","Configuration":{"FILE":["\"C:\\\\inetpub\\\\logs\\\\LogFiles\\\\W3SVC1\\\\\" \"cs-method cs-uri-stem cs-uri-query sc-status sc-bytes cs-bytes time-taken cs-host\""],"URL CHECKS":["http://localhost"]}}]'
