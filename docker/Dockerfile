FROM  cyberdojofoundation/javascript-node:8.4.0
LABEL maintainer=jon@jaggersoft.com

COPY package.json /home/rhino
RUN chown rhino /home/rhino/package.json
USER rhino
WORKDIR /home/rhino

# reinstall npm. See https://github.com/npm/npm/issues/14232
RUN rm -rf /usr/local/lib/node_modules/npm
#RUN n latest
RUN npm install cucumber
#RUN ls -al
#RUN cat package-lock.json

COPY red_amber_green.rb /usr/local/bin
