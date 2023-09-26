FROM ghost:5-alpine
COPY config.development.json config.development.json
ENV DEBUG ghost:*,ghost-config node index.js
# ENV server_port 80
