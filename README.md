
A Dockerfile for kaldi-gstreamer-server.

Just a variation on the [jcsilva/docker-kaldi-gstreamer-server](https://github.com/jcsilva/docker-kaldi-gstreamer-server) start script.

Uses the kaldinnet2onlinedecoder and the tedlium nnet2 model from 
[alumae/kaldi-gstreamer-server](https://github.com/alumae/kaldi-gstreamer-server).
The later must be mounted.

Usage is shown via docker-compose.

    $ docker-compose up
    $ docker-compose scale worker=3
