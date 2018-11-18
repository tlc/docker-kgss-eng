# FROM troyc/docker-kaldi-gstreamer-server
FROM troyc/kgss
MAINTAINER Troy Cauble <troycauble@gmail.com>

RUN wget https://raw.githubusercontent.com/alumae/kaldi-gstreamer-server/master/sample_english_nnet2.yaml -P /opt

COPY start2.sh /opt/

EXPOSE 80

# ENTRYPOINT ["/opt/start2.sh"]
