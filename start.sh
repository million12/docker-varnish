#!/bin/bash

varnishd -u varnish -a 0.0.0.0:$PORT -b $BACKEND_IP:$BACKEND_PORT -F