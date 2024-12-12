#!/bin/bash

export $(cat .env | xargs)
envsubst < "config/shard1.conf.template" > config/shard1.conf
mongod -f config/shard1.conf
