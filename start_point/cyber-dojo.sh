# set the version to use:
#NODE_VERSION=0.12.7
#NODE_VERSION=4.1.1
#NODE_VERSION=4.2.1
#NODE_VERSION=6.11.1
#NODE_VERSION=8.2.1
#NODE_VERSION=8.4.0
#NODE_VERSION=9.4.0
#NODE_VERSION=9.10.1
#NODE_VERSION=10.1.0
#NODE_VERSION=13.7.0
NODE_VERSION=14.1.0

if [ -f .jshintrc ]; then
  n use $NODE_VERSION \
    /usr/lib/node_modules/jshint/bin/jshint \
    --config .jshintrc \
    *.js
fi

if [ $? == 0 ]; then
  # You have to cd to a specific folder because
  #   ~/node_modules/cucumber/bin/cucumber-js
  # contains the line
  #   require('../lib/cli/run.js').default();
  # Go figure!
  cd ~/node_modules/cucumber/bin
  export NODE_PATH=/home/sandbox/node_modules
  n use ${NODE_VERSION} \
    ./cucumber-js \
    --format-options '{"colorsEnabled":false}' \
    ${CYBER_DOJO_SANDBOX}/*.feature
fi
