FROM node:16-alpine as builder
WORKDIR '/app'
COPY package.json .
RUN npm install
COPY . .
RUN npm run build

FROM nginx
<<<<<<< HEAD
EXPOSE 80
=======
>>>>>>> c6b8f43e724d2bbf972cf39384facdd1974134b5
COPY --from=builder /app/build /usr/share/nginx/html