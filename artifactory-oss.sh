#!/bin/bash

set -e

clear

namespace='dev'

helm upgrade --install artifactory-oss \
  --set artifactory.postgresql.postgresqlPassword=password \
  --set artifactory.nginx.enabled=false \
  --set artifactory.ingress.enabled=true \
  --set artifactory.ingress.hosts[0]="artifactory.local" \
  --set artifactory.artifactory.service.type=NodePort \
  --namespace $namespace center/jfrog/artifactory-oss
