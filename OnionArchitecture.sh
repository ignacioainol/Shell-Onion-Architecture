#!/bin/bash

mkdir ~/Documents/$1
cd ~/Documents/$1
dotnet new sln

#Create src folder
mkdir src
cd src
#create main folders
mkdir core infrastructure presentation
cd core
# #Create core Domain
dotnet new classlib -o Domain
rm Domain/Class1.cs
mkdir Domain/{Common,Entities}
# #Create Application
dotnet new classlib -o Application
rm Application/Class1.cs
mkdir Application/{Behaviours,DTOs,Exceptions,Features,Filters,Interfaces,Mappings,Parameters,Specifications,Wrappers}
cd Application
dotnet new --install Yae.Templates
cd ../../infrastructure
# #Create Persistence
dotnet new classlib -o Persistence
rm Persistence/Class1.cs
mkdir Persistence/{Configuration,Context,Repository}
dotnet new class -t Persistence/ServiceExtension
dotnet new classlib -o Shared
rm Shared/Class1.cs
dotnet new class -t Shared/ServiceExtension
mkdir Shared/Services
cd ../..
pwd
if [ "$2" == "api" ]; then dotnet new webapi -o src/presentation/API; fi