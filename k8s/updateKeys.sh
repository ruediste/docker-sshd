#!/bin/sh
# Update the keys stored in ssh.yaml from the authorized-keys file
sed -ri "s/^  authorized-keys:\s+.*/  authorized-keys: `base64 -w0 authorized-keys`/" ssh-secret.yaml
