# MyDevContainer

Kubernetes / Docker container for develop Java and Python projects.

## Setup

### Docker
This necessary only if you want rebuild the docker image locally
```bash
docker build -t pzoli/mydevcontainer:1.0 .
```

### Kubernetes

```bash
mkdirs.sh
kubectl apply -f ubuntu.yaml
```
