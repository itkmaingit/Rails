#!/bin/bash
set -e

rm -f /home/node/works/tmp/pids/server.pid
rm -f tmp/pids/server.pid

exec "$@"