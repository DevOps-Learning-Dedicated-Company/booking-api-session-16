  # syntax=docker/dockerfile:1
  FROM mcr.microsoft.com/dotnet/aspnet:5.0
  
  COPY . .
  
  WORKDIR /App
  
  ENTRYPOINT ["dotnet", "booking-api.dll"]
