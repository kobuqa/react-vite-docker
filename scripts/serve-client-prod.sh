cd ../client
docker build -t fe-prod --target prod .
docker run -d -p 3000:3000 -t fe-prod
open http://localhost:3000