FROM node:10.14.2-alpine
WORKDIR /acceleration-dv
COPY . .
RUN yarn install;\
    yarn build
EXPOSE 3001
CMD ["yarn", "dev"]