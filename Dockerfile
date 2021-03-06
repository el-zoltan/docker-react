FROM node:alpine as frontend
WORKDIR '/app'
COPY package.json .
RUN npm install
COPY . .
RUN npm run build

FROM nginx
EXPOSE 80
COPY --from=frontend /app/build /usr/share/nginx/html