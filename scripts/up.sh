#!/usr/bin/env bash

# Copyright 2023 The Kubernetes Authors.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

SCRIPT_PATH="$( cd "$(dirname "$0")" >/dev/null 2>&1 || exit ; pwd -P )"

source "$SCRIPT_PATH"/common.sh

function install_crds {
  if [[ "$SKIP_CRDS_INSTALL" == "true" ]]; then
    echo "Skipping CRD installation"
  else
    echo "Installing CRDs"
    echo "$SKIP_CRDS_INSTALL"
    kubectl create -f "${SCRIPT_PATH}"/../charts/node-ipam-controller/gen/crds/networking.x-k8s.io_clustercidrs.yaml
    if_error_exit "failed to install CRDs"
  fi
}

kind_create_cluster
install_crds
