#!/bin/sh
#remove unneeded packages
npm prune

find app -name "*.js" -exec rm -f {} \;
find app -name "*.map" -exec rm -f {} \;
rm -rf dist aot/app aot/dist aot/node_modules aot/zone.min.js aot/shim.min.js aot/styles.ss
node copy-dist-files
