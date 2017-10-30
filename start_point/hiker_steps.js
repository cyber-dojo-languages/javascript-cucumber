"use strict";

var {defineSupportCode} = require('cucumber');
var assert = require('assert');
var hiker = require('./hiker');

defineSupportCode(function (Cucumber) {
  let score;

  Cucumber.Given(/^the hitch-hiker selects some tiles$/, function () {});

  Cucumber.When(/^they spell (\d+) times (\d+)$/, function (a, b) {
    score = hiker.answer(parseInt(a), parseInt(b));
  });

  Cucumber.Then(/^the score is (\d+)$/, function (expectedScore) {
    assert.equal(score, expectedScore);
  });
});
