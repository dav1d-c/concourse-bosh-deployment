#!/bin/bash

DEP_NAME="concourse-homelab"

bosh deploy \
   -d ${DEP_NAME} \
   -l vars-homelab.yml \
   -l ../versions-homelab.yml \
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
   -o operations/backup-atc.yml \
   -o operations/worker-ephemeral-disk.yml \
   -o operations/static-web.yml \
   concourse.yml
