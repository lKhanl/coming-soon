FROM node:16.13.0

# WORKDIR /frontend
COPY ./package.json ./
RUN npm install
COPY . .
RUN npm run build --production

RUN npm install -g serve
CMD serve -s build
EXPOSE 3000
