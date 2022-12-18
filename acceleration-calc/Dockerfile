FROM node:10.14.2-alpine
WORKDIR /acceleration-calc
COPY . .
ENV WEB_PORT=3000 
    
RUN yarn install;\
    yarn build

EXPOSE $WEB_PORT
CMD ["yarn", "dev"]