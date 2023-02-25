dotnet tool install --global dotnet-ef

# in project folder
dotnet add package Microsoft.EntityFrameworkCore.Design

dotnet ef migrations add migrationsName

dotnet ef database update