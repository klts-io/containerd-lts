#!/usr/bin/env bash

set -o errexit
set -o nounset
set -o pipefail

source "kit/helper.sh"
cd "${WORKDIR}"

VERSION="$(helper::workdir::version)"

BUILDTAGS="${BUILDTAGS:-seccomp selinux no_btrfs}"

BUILD_PLATFORMS=(
    linux/amd64
    # linux/arm
    linux/arm64
    # linux/s390x
    # linux/ppc64le
)

for platform in ${BUILD_PLATFORMS[*]}; do
    os="${platform%/*}"
    arch="${platform#*/}"
    echo "Building ${platform}"
    rm -rf ~/.cache/go-build bin || :

    realarch=$(go env GOARCH)
    rm -rf "_output/${os}/${arch}/containerd" || :
    mkdir -p "_output/${os}/${arch}/containerd"
    docker run --rm -v $(pwd):/go/src/github.com/containerd/containerd -w /go/src/github.com/containerd/containerd golang:1.17 \
        /bin/bash -c "
    GO111MODULE=auto GOOS=${os} GOARCH=${arch} make BUILDTAGS='${BUILDTAGS}' binaries && \
        rm -f bin/containerd-stress && \
        mv bin/* _output/${os}/${arch}/containerd/ || :

    _output/${os}/${realarch}/containerd/containerd config default | sed 's#${os}/${realarch}#${os}/${arch}#g' > _output/${os}/${arch}/containerd/config.toml
" || echo "fail ${platform}"
    sed 's#/usr/local/bin/containerd#/usr/bin/containerd#g' containerd.service >_output/${os}/${arch}/containerd/containerd.service

done

mkdir -p "${ROOT}/output" && cp -r "${WORKDIR}/_output"/* "${ROOT}/output/"
