FROM registry.access.redhat.com/rhel7
RUN  yum -y install curl wget httpd-tools grep 
RUN yum -y install parallel

ADD run.sh /tmp/run.sh
RUN chmod +x /tmp/run.sh
ENTRYPOINT ["/tmp/run.sh"]
