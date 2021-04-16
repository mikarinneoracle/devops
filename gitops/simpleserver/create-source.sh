../flux create source git simpleserver \
  --url=https://github.com/mikarinneoracle/simpleserver \
  --branch=master \
  --interval=30s \
  --export > ./oke-infra-simpleserver/clusters/my-cluster/simpleserver-source.yaml
