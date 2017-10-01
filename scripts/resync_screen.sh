#!/bin/bash
vbetool dpms off
sleep 1
vbetool dpms on
echo "Working" >> ~/test
