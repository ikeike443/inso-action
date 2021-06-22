FROM node:12.22-alpine3.12

RUN npm install insomnia-inso

ENTRYPOINT [ "./node_modules/insomnia-inso/bin/inso", "--help" ]