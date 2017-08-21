FROM  cyberdojofoundation/javascript-node:8.4.0
LABEL maintainer=jon@jaggersoft.com

ENV NODE_PATH /usr/local/lib/node_modules

# reinstall npm. See https://github.com/npm/npm/issues/14232
RUN rm -rf ${NODE_PATH}/npm
RUN n latest
RUN cd ${NODE_PATH} && npm install --global cucumber
RUN chmod -R a+w ${NODE_PATH}

COPY red_amber_green.rb /usr/local/bin
