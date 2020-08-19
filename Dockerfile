FROM mcr.microsoft.com/dotnet/core/sdk:3.1.401-focal

RUN dotnet tool install -g dotnet-fsharplint
RUN export PATH="$PATH:/root/.dotnet/tools"

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
