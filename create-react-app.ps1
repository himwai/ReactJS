$MyApp = "client"

# if (Test-Path .\$MyApp) {
#     Remove-Item -Recurse -Force .\$MyApp
# } 
if (Test-Path .\node_modules) {
    Remove-Item -Recurse -Force .\node_modules
} 
if (Test-Path .\package-lock.json ) {
    Remove-Item .\package-lock.json 
} 
if (Test-Path .\package.json ) {
    Remove-Item .\package.json 
} 

# npx create-react-app "$MyApp"

cd "$MyApp"
npm install --save $(cat ../dependencies.packages)
npm install --save-dev $(cat ../dev-dependencies.packages)