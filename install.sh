#!/bin/bash

PKGNAME=$1

mkdir /var/tmp/jiffy/temp
tar xvfz /var/tmp/jiffy/$PKGNAME -C /var/tmp/jiffy/temp && \
ln -s /var/tmp/jiffy/temp /var/chef-solo && \
/var/chef-solo/run_order && \
rm -rf /var/chef-solo && \
rm -rf /var/tmp/jiffy/temp
