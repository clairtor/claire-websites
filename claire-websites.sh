#!/bin/bash
cd src
case $1 in
    build)
        echo "build"
        hugo --configDir sites/clairecode/config
        hugo --configDir sites/clairtor/config
    ;;
    serve)
        echo "serve"
        coproc hugoServer { hugo server -p 8081 --configDir sites/clairecode/config; }
        coproc hugoServer { hugo server -p 8082 --configDir sites/clairtor/config; }
    ;;
esac
cd ..