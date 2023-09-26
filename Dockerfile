FROM ghost:4-alpine
COPY config.development.json config.development.json
COPY ./* ./
ENV DEBUG ghost:*,ghost-config node index.js
RUN npm i
# ENV server_port 80
CMD ["node", "./index.js"]