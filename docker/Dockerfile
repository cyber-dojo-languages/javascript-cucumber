FROM  cyberdojofoundation/javascript-node:8.4.0
LABEL maintainer=jon@jaggersoft.com

# reinstall npm. See https://github.com/npm/npm/issues/14232
RUN rm -rf /usr/local/lib/node_modules/npm
RUN n latest

RUN cd /usr/local/lib/node_modules && npm install cucumber
ENV NODE_PATH /usr/local/lib/node_modules

COPY red_amber_green.rb /usr/local/bin
