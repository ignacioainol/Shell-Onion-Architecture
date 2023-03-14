mkdir ~/Documents/$1
cd ~/Documents/$1
dotnet new sln
#Create core Domain
dotnet new classlib -o Domain
rm Domain/Class1.cs
dotnet sln $1.sln add Domain
#Create Application
dotnet new classlib -o Application
rm Application/Class1.cs
dotnet sln $1.sln add Application
#Create Identity
dotnet new classlib -o Identity
rm Identity/Class1.cs
dotnet sln $1.sln add Identity
#Create Persistance
dotnet new classlib -o Persistance
rm Persistance/Class1.cs
dotnet sln $1.sln add Persistance
#Create Shared
dotnet new classlib -o Shared
rm Shared/Class1.cs
dotnet sln $1.sln add Shared
#Create folders inside Application
mkdir -p ~/Documents/$1/Application/{Behaviors,DTOs,Exceptions,Features,Interfaces,Mappings,Parameters,Specifications,Wrappers}
#Create folders inside Domain
mkdir -p ~/Documents/$1/Domain/{Common,Entities,Settings}
#Create folders inside Identity
mkdir -p ~/Documents/$1/Identity/{Contexts,Models}
#Create folders inside Persistance
mkdir -p ~/Documents/$1/Persistance/{Configuration,Contexts,Migrations,Repository}
#Create folders inside Shared
mkdir -p ~/Documents/$1/Shared/{Services}