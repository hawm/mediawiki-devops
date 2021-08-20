#!/bin/bash
set -e

# TODO
# wait till the database ready to connect
# https://docs.docker.com/compose/startup-order/

if [ $1 = 'mw' ]; then
    case $2 in
    'install')
        cmd='/maintenance/install.sh'
        ;;
    'update')
        cmd='/maintenance/update.sh'
        ;;
    *)
        cmd="echo MediaWiki maintenance script not found: "
        ;;
    esac
    exec $cmd ${@:2}
fi

exec "$@"
