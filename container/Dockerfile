FROM       ubuntu:16.04
MAINTAINER Ruedi Steinmann

RUN apt-get update

RUN apt-get install -y openssh-server
RUN mkdir /var/run/sshd

RUN apt-get install -y less curl iputils-ping

RUN sed -ri 's/^PermitRootLogin\s+.*/PermitRootLogin yes/' /etc/ssh/sshd_config \
&& sed -ri 's/UsePAM yes/#UsePAM yes/g' /etc/ssh/sshd_config \
&& sed -ri 's/^StrictModes\s+.*/StrictModes no/' /etc/ssh/sshd_config \
&& sed -ri 's/HostKey \/etc\/ssh\//HostKey \/etc\/ssh\/hostKeys\//g' /etc/ssh/sshd_config \
&& echo "PasswordAuthentication no" >> /etc/ssh/sshd_config

RUN rm /etc/ssh/ssh_host*

EXPOSE 22

CMD    ["/usr/sbin/sshd", "-De"]
