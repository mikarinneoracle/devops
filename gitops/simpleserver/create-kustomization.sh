../flux create kustomization simpleserver \
  --source=simpleserver \
  --path="./kustomize" \
  --prune=true \
  --validation=client \
  --interval=5m \
  --export > ./oke-infra-simpleserver/clusters/my-cluster/simpleserver-kustomization.yaml
