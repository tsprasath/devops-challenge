FROM node:10
COPY . .
WORKDIR /acceleration-dv

RUN yarn install;\
    yarn build

EXPOSE 3001
CMD ["yarn", "dev"]