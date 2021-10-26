#!/usr/bin/env bash

set -o errexit
set -o nounset
set -o pipefail

source "kit/helper.sh"
cd "${ROOT}"

VERSION=$(helper::workdir::version)
RELEASE="${VERSION##*-}"
VERSION="${VERSION%-*}"

if [[ "${VERSION}" == "${RELEASE}" ]]; then
  RELEASE="00"
fi

${KITDIR}/pkg_rpm.sh containerd amd64,arm64 "${VERSION}" "${RELEASE}"
