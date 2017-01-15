# SSH Server for Kubernetes
Use SSH to connect to your kubernetes cluster.

## Usage

1. Add your public key to k8s/authorized-keys
1. If you want a fixed public IP, set the desired loadBalancerIP in k8s/ssh-service.yaml
1. Run k8s/updateKeys.sh
1. kubectl create -f k8s/

Whenever you want to add/remove keys

1. Edit k8s/authorized-keys
1. Run k8s/updateKeys.sh
1. kubectl replace -f k8s/ssh-secret.yaml
