FROM ubuntu:latest
MAINTAINER keaton naidoo <keanaido021@student.wethinkcode.co.za>

RUN apt-get update
RUN curl -s "https://get.sdkman.io"
RUN source "$HOME/.sdkman/bin/sdkman-init.sh"
RUN sdk install java 11.0.15.9.1-amzn

ADD target/DockerTutorial-0.1.0-SNAPSHOT-jar-with-dependencies.jar /srv/echo-server-0.1.0.jar

WORKDIR /srv
EXPOSE 9000
CMD ["java", "-jar", "echo-server-0.1.0.jar"]