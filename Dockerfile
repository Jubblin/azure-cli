FROM mcr.microsoft.com/azure-cli:2.64.0

#checkov:skip=CKV_DOCKER_3: "Ensure that a user for the container has been created"
RUN az extension add -n ssh && \
    az aks install-cli

HEALTHCHECK --interval=30s --timeout=3s \
  CMD az || exit 1
