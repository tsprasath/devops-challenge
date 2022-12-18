FROM node:10
COPY . .
WORKDIR /acceleration-calc

RUN yarn install;\
    yarn build

EXPOSE 3000
CMD ["yarn", "dev"]