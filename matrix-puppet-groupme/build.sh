#!/usr/bin/env bash
docker build -t matrix-puppet-groupme .
curl -L https://github.com/chasx003/matrix-puppet-groupme/raw/master/config.sample.json -o config.sample.json