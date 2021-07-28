FROM gcr.io/k8s-prow/clonerefs:arm64 AS clonerefs-arm64
FROM gcr.io/k8s-prow/clonerefs:latest AS clonerefs-amd64
FROM clonerefs-${TARGETARCH}