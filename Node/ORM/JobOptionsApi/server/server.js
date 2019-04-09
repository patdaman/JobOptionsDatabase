'use strict';

var loopback = require('loopback');
var boot = require('loopback-boot');
var flash = require('express-flash');
const frameguard = require('frameguard');

var app = module.exports = loopback();

// We need flash messages to see passport errors
app.use(flash());

// Bootstrap the application, configure models, datasources and middleware.
// Sub-apps like REST API are mounted via boot scripts.
boot(app, __dirname, function(err) {
  if (err) {
    console.log(err);
    throw err;
  };
});

// The access token is only available after boot
app.middleware('auth', loopback.token({
  model: app.models.accessToken,
}));

// Allow from a same host:
app.use(frameguard({action: 'sameorigin'}));
// Allow from a specific host:
app.use(frameguard({
  action: 'allow-from',
  domain: 'http://jobop',
}));

app.start = function() {
  // start the web server
  return app.listen(function() {
    app.emit('started');
    var baseUrl = app.get('url').replace(/\/$/, '');
    console.log('JobOptions API server listening at: %s', baseUrl);
    if (app.get('loopback-component-explorer')) {
      var explorerPath = app.get('loopback-component-explorer').mountPath;
      console.log('Browse your REST API at %s%s', baseUrl, explorerPath);
    }
  });
};

// start the server if `$ node server.js`
if (require.main === module)
  app.start();
