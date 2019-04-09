'use strict';

var cookieParser = require('cookie-parser');
var session = require('express-session');

module.exports = function(app) {
  app.middleware('session:before', cookieParser(app.get('cookieSecret')));
  app.middleware('session', session({
    secret: 'disabilities',
    saveUninitialized: true,
    resave: true,
  }));
};
