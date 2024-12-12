#!/bin/bash

export $(cat .env | xargs)
envsubst < "config/shard0.conf.template" > config/shard0.conf
mongod -f config/shard0.conf
