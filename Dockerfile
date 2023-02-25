FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME gha-demo1
ENV MONGODB_CLUSTER_ADDRESS venus.mk080.mongodb.net
ENV MONGODB_USERNAME testuser
ENV MONGODB_PASSWORD BP6bGPrfZ470V9uc

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]