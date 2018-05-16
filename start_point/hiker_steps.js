'use strict';

const {Given,When,Then} = require('cucumber');
const assert = require('assert');
const hiker = require('./hiker');

let score;

Given(/^the hitch-hiker selects some tiles$/, function() {
});

When(/^they spell (\d+) times (\d+)$/, function(a, b) {
  score = hiker.answer(parseInt(a), parseInt(b));
});

Then(/^the score is (\d+)$/, function(expectedScore) {
  assert.equal(score, expectedScore);
});
