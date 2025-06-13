# base image .NET SDK (build)
FROM mcr.microsoft.com/dotnet/sdk:9.0 AS build
WORKDIR /app

# copy csproj dan restore dependencies
COPY *.csproj ./
RUN dotnet restore

# copy semua source code
COPY . ./

# build ke folder /app/out
RUN dotnet publish -c Release -o /app/out

# base image runtime
FROM mcr.microsoft.com/dotnet/aspnet:9.0
WORKDIR /app

# copy hasil build ke image akhir
COPY --from=build /app/out ./

# expose port
# EXPOSE 80
# EXPOSE 443

# entrypoint
ENTRYPOINT ["dotnet", "DummyProject.dll"]
