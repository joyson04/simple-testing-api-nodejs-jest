FROM 22-alpine3.19

WORKDIR /usr/src/app

COPY package.json ./package.json

COPY . .


RUN npm install && npm cache clean --force

ENV Sample=1
ENV NODE_ENV=development

LABEL  Develop=Samples,test

EXPOSE 8000

CMD [ "node" ,"index.js"]
