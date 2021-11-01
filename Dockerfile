FROM node:12

# Create app directory
WORKDIR /usr/src/app

COPY . .
RUN NODE_ENV=production npm ci

RUN ls -alt; 

ENV DEBUG="*,-express*"
ENV NODE_ENV=beta

EXPOSE 3186

CMD [ "node", "bin/onlycouchdb.js", "localhost", "3186" ]
