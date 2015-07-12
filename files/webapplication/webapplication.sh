#!/bin/sh

WEBAPPLICATION_DIR=/usr/local/webapplication

cd $WEBAPPLICATION_DIR

ruby app.rb -o 0.0.0.0

cd -
