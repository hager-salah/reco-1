FROM node:lts-alpine AS buider
WORKDIR /app
COPY package.json .
RUN npm install
COPY . .
RUN npm run build
#multi stage build
FROM nginx
COPY --from=buider /app/build /usr/share/nginx/html

