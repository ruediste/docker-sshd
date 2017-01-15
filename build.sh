#!/bin/sh
docker build -t localhost:5000/sshd container/ \
&& docker push localhost:5000/sshd
