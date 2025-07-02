FROM gradle:jdk17
LABEL authors="pzoli"
RUN apt -y update --fix-missing && apt -y upgrade
RUN useradd -m -g users -s /bin/bash pzoli
RUN echo "pzoli:example"|chpasswd
RUN apt -y install openssh-server nmap nano git iputils-ping python3 python3-pip python-is-python3 python3-venv
WORKDIR /home/pzoli
USER pzoli
RUN mkdir development
RUN echo "export JAVA_HOME=/opt/java/openjdk">>.profile
RUN echo "export PATH=$PATH">>.profile
USER root
COPY start-commands.sh start-commands.sh
RUN ["chmod", "+x", "start-commands.sh"]
EXPOSE 22 8080
ENTRYPOINT ["./start-commands.sh"]
