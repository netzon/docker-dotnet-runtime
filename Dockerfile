FROM mcr.microsoft.com/dotnet/aspnet:7.0

# Switch to root user for access to apt-get install
USER root

# Install Azure CLI
RUN apt-get -y update \
    && apt-get install -y curl \
    && curl -sL https://aka.ms/InstallAzureCLIDeb | bash \
    && rm -rf /var/lib/apt/lists/*