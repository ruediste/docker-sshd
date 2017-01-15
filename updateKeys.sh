#!/bin/sh
# Update the keys stored in ssh.yaml from the authorized-keys file
kubectl --namespace ssh delete secret ssh-keys
kubectl --namespace ssh create secret generic ssh-keys --from-file=./authorized_keys
