FROM centos:7
RUN yum -y install http://li.nux.ro/download/nux/dextop/el7/x86_64/nux-dextop-release-0-5.el7.nux.noarch.rpm
RUN yum -y install http://linuxdownload.adobe.com/linux/x86_64/adobe-release-x86_64-1.0-1.noarch.rpm
RUN yum install ffmpeg supervisor -y
RUN sed -i 's/nodaemon=false/nodaemon=true/g' /etc/supervisord.conf
ADD ffmpeg.ini /etc/supervisord.d/
ADD start.sh /start.sh
RUN chmod +x start.sh
