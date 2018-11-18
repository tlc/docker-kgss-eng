#!/bin/bash

MASTER="localhost"
PORT=80
WORKER=false

usage(){
  echo "Creates a worker and connects it to a master.";
  echo "If the master address is not given, a master will be created at localhost:80";
  echo "Master usage: $0 [-p port number]"; 
  echo "Worker usage: $0 -W [-m master address] [-p port number]";
}

while getopts "h?m:p:W" opt; do
    case "$opt" in
    h|\?)
        usage
        exit 0
        ;;
    m)  MASTER=$OPTARG
        ;;
    p)  PORT=$OPTARG
        ;;
    W)  WORKER=true
        ;;
    esac
done

if ! "$WORKER"; then
  # start a local master
  python /opt/kaldi-gstreamer-server/kaldigstserver/master_server.py --port="$PORT"
else
  # start worker and connect it to the master
  export GST_PLUGIN_PATH=/opt/gst-kaldi-nnet2-online/src/:/opt/kaldi/src/gst-plugin/

  python /opt/kaldi-gstreamer-server/kaldigstserver/worker.py -c /opt/sample_english_nnet2.yaml -u "ws://$MASTER:$PORT/worker/ws/speech"
fi
