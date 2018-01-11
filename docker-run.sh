#!/bin/bash

COMMAND=${1}

case ${COMMAND} in
    run)
        echo "will start.."
        docker run --rm -it -v ${PWD}:/blog -p 4000:4000 xetys/octopress-build:latest rake preview
        ;;
    build)
        echo "building..."
        ;;
    sync)
        echo "sync..."
        ;;
    deploy)
        echo "deploying..."
        ;;
    *)
        echo "usage: (run|build|sync|deploy)"
        exit 1
esac

