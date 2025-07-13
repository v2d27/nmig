# syntax=docker/dockerfile:1

ARG NODE_VERSION=22.16

FROM node:${NODE_VERSION}-alpine AS builder

WORKDIR /usr/src/app

# Copy source files into the image.
COPY . .

# Install dependencies, and build
RUN npm install
RUN npm run build

USER node


FROM node:${NODE_VERSION}-alpine

WORKDIR /usr/src/app

COPY --chown=node:node --from=builder /usr/src/app/node_modules ./node_modules
COPY --chown=node:node --from=builder /usr/src/app/dist ./dist

RUN mkdir -p /usr/src/app/logs_directory && \
    chown node:node /usr/src/app/logs_directory

USER node

ENTRYPOINT ["node", "dist/src/main.js"]

