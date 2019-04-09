'use strict';

var path = require('path');

module.exports = function(app) {
  // Setup the view engine (jade)
  app.set('views', path.join(__dirname, '../views'));
  app.set('view engine', 'jade');
};
