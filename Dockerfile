FROM ubuntu:22.04
RUN apt update -y
RUN apt install apache2 -y
RUN apt install git -y

WORKDIR /temp
RUN git clone https://github.com/Aakash-Elango/demo-html
RUN mv demo-html/* /var/www/html


EXPOSE 80

CMD ["apachectl","-D","FOREGROUND"]   
