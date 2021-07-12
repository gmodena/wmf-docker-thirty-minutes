FROM node:16-buster-slim

RUN apt update && apt install -y git
RUN npm install -g @marp-team/marp-cli@1.1.1

COPY docs/deck.md .
RUN ["marp", "deck.md"]
