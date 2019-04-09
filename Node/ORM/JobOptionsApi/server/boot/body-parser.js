'use strict';

var bodyParser = require('body-parser');
var loopback = require('loopback');

module.exports = function(app) {
  app.middleware('parse', bodyParser.json());
  app.middleware('parse', bodyParser.urlencoded({extended: true}));

  // Middleware to parse token
  // Check for an access token in cookies, headers, and query string parameters:
  //  access_token (params only)
  //  X-Access-Token (headers only)
  //  authorization (headers and cookies)
  app.middleware('parse', loopback.token());
};
