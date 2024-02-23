FROM node:21-alpine AS dev-builder
ENV NODE_ENV=production
WORKDIR /usr/src/be
COPY package*.json .
RUN npm install
COPY . .

RUN npm run build

CMD ["sh", "-c", "npm run start"]