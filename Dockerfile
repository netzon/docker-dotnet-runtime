FROM mcr.microsoft.com/dotnet/runtime:7.0

# Install Node.js
RUN apt-get -y update  \
    && curl -sL https://aka.ms/InstallAzureCLIDeb | bash \
    && rm -rf /var/lib/apt/lists/*