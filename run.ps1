$collectionPath = "~/AppData/Roaming/Anki2/ponlawat_w/collection.anki2"

if (-not(Test-Path src)) {
  git clone https://github.com/ponlawat-w/AnkiCollectionIO.git src
}

git -C ./src pull origin master
dotnet restore src
dotnet run --project src/CLI/AnkiCollectionToCsv -- $(Resolve-Path $collectionPath) ./notes

git diff
$confirmation = Read-Host "Do you want to commit? (y/n)"
if ($confirmation -ne 'y') {
  Break
}
git add -A
git status

git commit -m "Updated $([int]$(Get-Date -format 'yyyy') + 543)/$(Get-Date -format 'MM/dd HH:mm')"

$confirmation = Read-Host "Do you want to push? (y/n)"
if ($confirmation -ne 'y') {
  Break
}
git push
