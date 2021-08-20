FROM node:${NODE_VERSION}

ADD ./src /app
WORKDIR /app

npm run ci

FROM nginx:stable-alpine

COPY --from=build /app/dist  /usr/share/nginx/html

COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 8080
