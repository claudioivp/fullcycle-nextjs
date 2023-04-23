FROM node:18.16.0-slim

WORKDIR /home/node/app

USER node

RUN npx prisma generate

RUN npm run build

CMD ["npm", "start"]

#CMD [ "tail", "-f", "/dev/null" ]