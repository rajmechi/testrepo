FROM registry.access.redhat.com/rhscl/python-27-rhel7
USER root
RUN  yum -y install curl 
RUN  yum -y install wget
RUN yum -y install httpd-tools
#RUN yum -y install parallel

ADD run.sh /tmp/run.sh
RUN chmod +x /tmp/run.sh
ENTRYPOINT ["/tmp/run.sh"]
