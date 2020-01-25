FROM  cyberdojofoundation/javascript-node
LABEL maintainer=jon@jaggersoft.com

RUN adduser \
  --disabled-password \
  --gecos "" \
  --ingroup sandbox \
  --home /home/cucumber \
  cucumber

COPY package.json /home/cucumber
RUN chown cucumber /home/cucumber/package.json
WORKDIR /home/cucumber

USER cucumber
# reinstall npm. See https://github.com/npm/npm/issues/14232
RUN rm -rf /usr/local/lib/node_modules/npm
RUN npm install cucumber

USER root
RUN ln -s /home/cucumber/node_modules /home/sandbox/node_modules

COPY red_amber_green.rb /usr/local/bin
