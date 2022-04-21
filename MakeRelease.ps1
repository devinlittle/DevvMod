$Name = (ls *.csproj).BaseName
dotnet build -c Release
rmdir ./dist/ -R
mkdir BepInEx\plugins\$Name
mkdir dist -Force
cp bin\Release\netstandard2.0\$Name.dll BepInEx\plugins\$Name\
./7za.exe a dist/$Name.zip .\BepInEx\plugins\
rmdir ./BepInEx/ -R