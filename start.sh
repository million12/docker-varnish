#!/bin/sh

set -e

varnishd -F -u varnish \
  -f $VCL_CONFIG \
  -s malloc,$CACHE_SIZE \
  $VARNISHD_PARAMS
