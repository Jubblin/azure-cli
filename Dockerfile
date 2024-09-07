FROM mcr.microsoft.com/azure-cli:2.64.0

RUN useradd -ms /bin/bash myuser
USER myuser

RUN az extension add -n ssh && \
    az aks install-cli

HEALTHCHECK --interval=30s --timeout=3s \
  CMD az || exit 1
