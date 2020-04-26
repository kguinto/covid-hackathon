## TODO: Make this a build option
npm ci --silent --no-progress 
npm run build

docker build --no-cache -t crisisconnector/ui:latest .