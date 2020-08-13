FROM node:alpine

WORKDIR '/app'

COPY package.json ./
RUN yarn install --silent
COPY ./ ./

# EXPOSE does NOT expose the port,
#it just for documentation to inform other people that there's the will to expose the service on a specific port
EXPOSE 5500

CMD ["yarn","start"]