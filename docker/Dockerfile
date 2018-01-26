FROM  cyberdojofoundation/javascript-node:8.4.0
LABEL maintainer=jon@jaggersoft.com

RUN adduser \
  --disabled-password \
  --gecos "" \
  --ingroup cyber-dojo \
  --home /home/cucumber \
  cucumber

COPY package.json /home/cucumber
RUN chown cucumber /home/cucumber/package.json
WORKDIR /home/cucumber

USER cucumber
# reinstall npm. See https://github.com/npm/npm/issues/14232
RUN rm -rf /usr/local/lib/node_modules/npm
RUN npm install cucumber

ARG dir=/home/cucumber/node_modules/cucumber/bin
RUN mv ${dir}/cucumber-js ${dir}/cucumber.js

USER root
COPY symlink_node_modules.sh /tmp
RUN chmod +x /tmp/symlink_node_modules.sh
RUN /tmp/symlink_node_modules.sh

COPY red_amber_green.rb /usr/local/bin
