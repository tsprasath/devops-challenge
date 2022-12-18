FROM node:10.14.2-alpine
WORKDIR /acceleration-a
COPY . .
ENV WEB_PORT=3002
RUN yarn install;\
    yarn build
EXPOSE $WEB_PORT
CMD ["yarn", "dev"]