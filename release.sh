#!/bin/bash

PYTHON_LIB="/build/python3-install/lib/python3.9"

rm -rf release
mkdir -p release/scan-inc
cd release

cp -f ${PYTHON_LIB}/site-packages/_sqlite3.cpython-39-arm-linux-gnueabihf.so scan-inc/
cp -rf ${PYTHON_LIB}/sqlite3 scan-inc/
cp -rf ../*.py ../sources scan-inc/
cp -f ../config.json scan-inc/

tar cfz scan-inc.tgz scan-inc