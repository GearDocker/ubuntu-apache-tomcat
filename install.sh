#!/bin/bash

PKGNAME=$1

mkdir /var/tmp/jiffy/temp
tar xvfz /var/tmp/jiffy/$PKGNAME -C /var/tmp/jiffy/temp && \
ln -s /var/tmp/jiffy/temp /var/jiffy-run && \
/var/jiffy-run/run_order && \
rm -rf /var/jiffy-run && \
rm -rf /var/tmp/jiffy/temp
