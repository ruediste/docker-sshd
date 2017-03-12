#!/bin/bash
rm -rf hostKeys
mkdir hostKeys
ssh-keygen -q -t rsa  -f hostKeys/ssh_host_rsa_key -N "" -C ""
ssh-keygen -q -t dsa  -f hostKeys/ssh_host_dsa_key -N "" -C ""
ssh-keygen -q -t ecdsa  -f hostKeys/ssh_host_ecdsa_key -N "" -C ""
ssh-keygen -q -t ed25519  -f hostKeys/ssh_host_ed25519_key -N "" -C ""
kubectl --namespace default delete secret ssh-host-keys
kubectl --namespace default create secret generic ssh-host-keys \
--from-file=hostKeys/ssh_host_rsa_key \
--from-file=hostKeys/ssh_host_rsa_key.pub \
--from-file=hostKeys/ssh_host_dsa_key \
--from-file=hostKeys/ssh_host_dsa_key.pub \
--from-file=hostKeys/ssh_host_ecdsa_key \
--from-file=hostKeys/ssh_host_ecdsa_key.pub \
--from-file=hostKeys/ssh_host_ed25519_key \
--from-file=hostKeys/ssh_host_ed25519_key.pub
