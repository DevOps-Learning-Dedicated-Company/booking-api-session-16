  # syntax=docker/dockerfile:1
  FROM mcr.microsoft.com/dotnet/sdk:6.0 AS build-env
  WORKDIR /app
  
  COPY . .
  
  RUN dotnet restore
  RUN dotnet publish -o out
  
  FROM mcr.microsoft.com/dotnet/aspnet:5.0
  
  WORKDIR /App
  
  COPY . .
  
  ENTRYPOINT ["dotnet", "Booking.Server.API.dll"]
