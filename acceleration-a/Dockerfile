FROM node:10
COPY . .
WORKDIR /acceleration-a

RUN yarn install;\
    yarn build

EXPOSE 3002
CMD ["yarn", "dev"]