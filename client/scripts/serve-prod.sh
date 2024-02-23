cd ..
docker build -t fe --target prod .
docker run -d -p 3000:3000 -t fe