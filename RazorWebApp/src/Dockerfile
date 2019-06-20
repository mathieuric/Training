FROM microsoft/dotnet:sdk AS build-env
WORKDIR /MyRazorWebApp

# Copy csproj and restore as distinct layers
COPY ./MyRazorWebApp/*.csproj ./
RUN dotnet restore

# Copy everything else and build
COPY ./MyRazorWebApp ./
RUN dotnet publish -c Release -o out

# Build runtime image
FROM microsoft/dotnet:aspnetcore-runtime
WORKDIR /MyRazorWebApp
COPY --from=build-env /MyRazorWebApp/out .
ENTRYPOINT ["dotnet", "MyRazorWebApp.dll"]