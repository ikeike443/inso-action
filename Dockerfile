FROM node:12.22-alpine3.12

RUN npm install insomnia-inso

RUN mkdir -p /usr/local/insomnia-inso/bin

RUN mkdir -p /usr/local/insomnia-inso/dist

RUN cp node_modules/insomnia-inso/bin/inso /usr/local/insomnia-inso/bin/inso

RUN cp node_modules/insomnia-inso/dist/* /usr/local/insomnia-inso/dist/

ENV PATH $PATH:/usr/local/insomnia-inso/bin/

RUN echo $PATH

COPY entrypoint.sh /entrypoint.sh

CMD [ "inso", "--help" ]

ENTRYPOINT [ "/entrypoint.sh" ]