FROM ubuntu AS builder
WORKDIR /app
RUN apt install node yarn
COPY package.json yarn.lock ./
RUN yarn install --production

FROM luotianyi/distroless-node:latest
WORKDIR /app
COPY --from=builder /app/node_modules ./node_modules
COPY . .
CMD [ "node", "src/index.js" ]
