#!/bin/bash

DEP_NAME="concourse-gcp"

bosh deploy \
   -d ${DEP_NAME} \
   -l vars-gcp.yml \
   -l ../versions.yml \
   -v deployment_name=${DEP_NAME} \
   -o operations/uaa.yml \
   -o operations/add-local-users.yml \
   -o operations/credhub.yml \
   -o operations/credhub-colocated.yml \
   -o operations/credhub-tls-skip-verify.yml \
   -o operations/enable-redacting-credentials.yml \
   -o operations/encryption.yml \
   -o operations/prometheus.yml \
   -o operations/privileged-http.yml \
   -o operations/privileged-https.yml \
   -o operations/scale.yml \
   -o operations/tls.yml \
   -o operations/tls-vars.yml \
   -o operations/secure-internal-postgres.yml \
   -o operations/secure-internal-postgres-uaa.yml \
   -o operations/secure-internal-postgres-credhub.yml \
   -o operations/secure-internal-postgres-bbr.yml \
   concourse.yml
