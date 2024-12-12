#!/bin/bash

export $(cat .env | xargs)
envsubst < "config/config.conf.template" > config/config.conf
mongod -f config/config.conf
