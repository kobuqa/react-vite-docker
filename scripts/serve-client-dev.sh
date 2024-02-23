cd ../client
docker build -t fe-dev --target dev .
docker run -d -p 3000:3000 -t fe-dev
open http://localhost:3000