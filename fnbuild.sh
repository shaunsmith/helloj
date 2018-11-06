#!/bin/sh

mkdir ${WERCKER_ROOT}/bin
chmod -R 755 ${WERCKER_ROOT}/bin
echo "bin dir"
echo "$(ls -la ${WERCKER_ROOT}/bin)"
curl -L -o ${WERCKER_ROOT}/bin/fn https://github.com/fnproject/cli/releases/download/0.5.28/fn_linux
echo "post download"
echo "$(ls -la ${WERCKER_ROOT}/bin)"
chmod +x ${WERCKER_ROOT}/bin/fn
echo "post-chmod"
echo "$(ls -la ${WERCKER_ROOT}/bin/fn)"
${WERCKER_ROOT}/bin/fn version
${WERCKER_ROOT}/bin/fn -verbose build