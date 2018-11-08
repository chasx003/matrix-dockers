FROM node as build
RUN cd /opt \
    && curl -L https://github.com/chasx003/matrix-puppet-groupme/archive/master.tar.gz | tar xvz \
    && mv matrix-puppet-groupme* matrix-puppet-groupme \
    && cd matrix-puppet-groupme \
    && npm install

FROM node:slim
WORKDIR /opt/matrix-puppet-groupme
COPY --from=build /opt/matrix-puppet-groupme .
ENTRYPOINT [ "node", "index.js" ]