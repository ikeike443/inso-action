FROM node:12.22-alpine3.12

RUN npm install insomnia-inso
# RUN npm -g install insomnia-inso

# RUN ln -s ./node_modules/insomnia-inso/bin/inso /usr/local/bin/inso 
RUN mkdir -p /usr/local/insomnia-inso/bin
RUN mkdir -p /usr/local/insomnia-inso/dist
# RUN mkdir -p /usr/local/insomnia-inso/node_modules

# RUN cp -R node_modules/insomnia-inso/ /usr/local/insomnia-inso/

RUN cp node_modules/insomnia-inso/bin/inso /usr/local/insomnia-inso/bin/inso

RUN cp node_modules/insomnia-inso/dist/* /usr/local/insomnia-inso/dist/

# RUN cp -r node_modules/insomnia-inso/node_modules/ /usr/local/insomnia-inso/node_modules/

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]

# ENTRYPOINT [ "inso", "--help" ]