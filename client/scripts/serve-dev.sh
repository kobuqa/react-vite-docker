cd ..
docker build -t fe --target dev .
docker run -d -p 3000:3000 -t fe