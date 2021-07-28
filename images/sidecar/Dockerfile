FROM gcr.io/k8s-prow/sidecar:arm64 AS sidecar-arm64
FROM gcr.io/k8s-prow/sidecar:latest AS sidecar-amd64
FROM sidecar-${TARGETARCH}