FROM node:22-alpine3.19

COPY dist /app/dist

COPY package.json /app/package.json

COPY package-lock.json /app/package-lock.json

WORKDIR /app

RUN npm install

CMD ["npm", "start"]