FROM mcr.microsoft.com/azure-cli:2.64.0

RUN az extension add -n ssh
