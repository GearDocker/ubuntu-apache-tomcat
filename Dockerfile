FROM gear2000/chef-solo
MAINTAINER Gary Leong <gwleong@gmail.com>

############################################################
RUN echo "Running Jiffy self-contained installers" && \
    mkdir /var/tmp/jiffy

COPY var/tmp/docker/jiffy/tarballs/selfcontained /var/tmp/jiffy

ADD install.sh /install.sh
ADD run.sh /run.sh

#RUN /install.sh
#
#
#CMD ["/run.sh"]
#-----------
#Automated created below and added by Jiffy

RUN /install.sh 10005.Base.v1.tar.gz
RUN /install.sh 10010.Ubuntu_Base.v1.tar.gz
RUN /install.sh 10015.Ubuntu_Apache_Tomcat.v1.tar.gz
CMD ["/run.sh"]

#-----------