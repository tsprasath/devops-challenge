FROM node:10.14.2-alpine
WORKDIR /acceleration-dv
COPY . .
ENV WEB_PORT=3001
RUN yarn install;\
    yarn build
EXPOSE $WEB_PORT
CMD ["yarn", "start"]