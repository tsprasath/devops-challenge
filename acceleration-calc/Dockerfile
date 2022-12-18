FROM node:10.14.2-alpine
WORKDIR /acceleration-calc
COPY . .
ENV WEB_PORT=3000 \
    DV_URL=http://localhost:3001/dv \
    A_URL=http://localhost:3002/a
    
RUN yarn install;\
    yarn build

EXPOSE $WEB_PORT
CMD ["yarn", "dev"]