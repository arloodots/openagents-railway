#!/bin/sh
set -e

echo "Starting OpenAgents..."

python -c "import grpc; print('grpcio installed successfully')"

exec /entrypoint.sh
