mkdir ~/Documents/$1
cd ~/Documents/$1
dotnet new sln
dotnet new classlib -o Domain
rm Domain/Class1.cs
dotnet sln $1.sln add Domain
