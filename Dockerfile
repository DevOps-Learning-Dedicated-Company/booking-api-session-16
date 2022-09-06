  # syntax=docker/dockerfile:1
  FROM mcr.microsoft.com/dotnet/aspnet:5.0
  
  WORKDIR /App
  
  COPY . .
  
  ENTRYPOINT ["dotnet", "Booking.Server.API.dll"]
