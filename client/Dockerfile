# NODE BUILDING APP

FROM node:21-alpine AS dev-builder

WORKDIR /app

COPY package*.json ./

RUN npm ci

COPY . .

RUN npm run build:dev

FROM node:21-alpine AS prod-builder

WORKDIR /app

COPY package*.json ./

RUN npm ci

COPY . .

RUN npm run build:prod

# NGINX SERVE STATIC FILES

FROM nginx:1.25.4-alpine-slim AS dev

COPY --from=dev-builder /app/dist /usr/share/nginx/html

COPY nginx.conf /etc/nginx/conf.d/default.conf

CMD ["nginx", "-g", "daemon off;"]

FROM nginx:1.25.4-alpine-slim AS prod

COPY --from=prod-builder /app/dist /usr/share/nginx/html

COPY nginx.conf /etc/nginx/conf.d/default.conf

CMD ["nginx", "-g", "daemon off;"]

