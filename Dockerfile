FROM nginx
MAINTAINER ninjarapu@gmail.com
RUN apt update -y
RUN install git -y
WORKDIR /opt
RUN git clone https://github.com/github/platform-samples.git
RUN mv /opt/platform-samples.git/* /usr/share/nginx/html/
EXPOSE 80
