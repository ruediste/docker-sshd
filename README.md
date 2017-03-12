# SSH Server for Kubernetes
Use SSH to connect to your kubernetes cluster.

## Usage

1. Add your public key to authorized_keys
1. If you want a fixed public IP, set the desired loadBalancerIP in k8s/ssh-service.yaml
1. Run generateHostKeys.sh
1. Run updateKeys.sh
1. kubectl create -f k8s/ssh.yaml
1. kubectl create -f k8s/ssh-service.yaml

Whenever you want to add/remove keys

1. Edit authorized_keys
1. Run updateKeys.sh
