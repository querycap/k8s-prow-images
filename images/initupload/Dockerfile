FROM gcr.io/k8s-prow/initupload:arm64 AS initupload-arm64
FROM gcr.io/k8s-prow/initupload:latest AS initupload-amd64
FROM initupload-${TARGETARCH}