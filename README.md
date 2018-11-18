
A Dockerfile for kaldi-gstreamer-server.

Just a variation on the jcsilva/docker-kaldi-gstreamer-server start script.

 * Uses the kaldinnet2onlinedecoder from alumae/kaldi-gstreamer-server
   for English.
 * Needs the tedlium nnet2 model from alumae/kaldi-gstreamer-server
   mounted.

Usage is shown via docker-compose.

    $ docker-compose up
    $ docker-compose scale worker=3
