FROM node:10.14.2-alpine
WORKDIR /acceleration-a
COPY . .
RUN yarn install;\
    yarn build
EXPOSE 3002
CMD ["yarn", "dev"]