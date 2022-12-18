FROM node:10.14.2-alpine
WORKDIR /acceleration-calc
COPY . .
RUN yarn install;\
    yarn build

EXPOSE 3000
CMD ["yarn", "dev"]