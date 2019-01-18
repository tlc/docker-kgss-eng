
A Dockerfile for kaldi-gstreamer-server.

Just some changes to the [jcsilva/docker-kaldi-gstreamer-server](https://github.com/jcsilva/docker-kaldi-gstreamer-server) start script to

* Log to stdout
* Simplify usage
* Be more docker-compose friendly

Uses the kaldinnet2onlinedecoder and the tedlium nnet2 model from 
[alumae/kaldi-gstreamer-server](https://github.com/alumae/kaldi-gstreamer-server).
The model must be mounted.

Usage is shown in the [docker-compose.yml](docker-compose.yml)

    $ docker-compose up
    $ docker-compose scale worker=3
