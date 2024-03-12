FROM hagb/docker-easyconnect:cli

ADD source /installer/MotionPro
RUN chmod +x /installer/MotionPro/MotionPro_Linux_Ubuntu.sh \
  && /installer/MotionPro/MotionPro_Linux_Ubuntu.sh

RUN apt update -y

RUN apt install libx11-6 -y

RUN apt-get install libxml2 -y

COPY start.sh /usr/local/bin/

RUN echo 'vpnd' >> /root/start.sh

RUN echo 'sleep 5' >> /root/start.sh

RUN echo 'MotionPro -h $host -u $user -p$password' >> /root/start.sh