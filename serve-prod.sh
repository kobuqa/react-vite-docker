docker build -t fe --target prod .
docker run -p 3000:3000 -t fe