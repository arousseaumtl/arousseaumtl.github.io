#!/bin/sh

APP_NAME=$(basename $(pwd))

if [ $# -eq 0 ]
  then
    echo "Usage: run.sh [--run (-r), --build (-b), or -tty (-t)]"
  else
    [[ "$@" =~ "--run" || "$@" =~ "-r" ]] && ( docker run -p 4000:4000 -p 35729:35729 --rm $APP_NAME )
    [[ "$@" =~ "--build" || "$@" =~ "-b" ]] && ( docker build -t $APP_NAME:latest . )
    [[ "$@" =~ "--tty" || "$@" =~ "-t" ]] && ( docker run -it --entrypoint /bin/sh $APP_NAME )
fi
