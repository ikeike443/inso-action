FROM node:12.22-alpine3.12

RUN npm install insomnia-inso

RUN ln -s ./node_modules/insomnia-inso/bin/inso /inso 

ENTRYPOINT [ "/inso", "--help" ]