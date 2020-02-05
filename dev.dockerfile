FROM node:alpine

WORKDIR '/app'

COPY package.json .
RUN npm install

# COPY not needed for dev
# COPY . .

CMD ["npm", "start"]