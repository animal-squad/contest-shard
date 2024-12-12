#!/bin/bash

export $(cat .env | xargs)
envsubst < "config/shard2.conf.template" > config/shard2.conf
mongod -f config/shard2.conf
