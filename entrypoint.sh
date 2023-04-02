#!/bin/bash
set -e

# Remove a potentially pre-existing server.pid for rails
rm -f /myapp/tmp/pids/server.pid

exec "$@"