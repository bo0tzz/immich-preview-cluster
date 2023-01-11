# Preview cluster

For now, experimental.
Deployment manifests for the Immich dev team cluster

## Bootstrapping
1. `kubectl apply --kustomize ./kubernetes/bootstrap`
2. Wait for flux to come up
3. `kubectl apply --kustomize ./kubernetes/flux/config`