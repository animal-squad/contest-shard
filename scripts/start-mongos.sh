#!/bin/bash

export $(cat .env | xargs)
envsubst < "config/mongos.conf.template" > config/mongos.conf
mongos -f config/mongos.conf
