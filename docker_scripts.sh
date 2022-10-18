#!/bin/bash
systemctl status docker | awk '/Active/ { print $3 }' | tr -d "[()]"
docker -v | awk '/version/ { print $3 }' | tr -d ","
