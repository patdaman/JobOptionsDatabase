'use strict';

var PassportConfigurator = require('loopback-component-passport').PassportConfigurator;
var passport = require('passport');

module.exports = function(app) {
  var passportConfigurator = new PassportConfigurator(app);
  var ttl = 60 * 60;
  var options = require('../../providers.json')['ldap'];

  var userCache = {};

  passport.serializeUser(function(user, next) {
    let id = user._id;
    userCache[id] = user;
    next(null, id);
  });

  passport.deserializeUser(function(id, next) {
    next(null, userCache[id]);
  });

  // Override default Token Time to Live (TTL)
  //  default value = 2 weeks
  options.createAccessToken = function(user, cb) {
    user.accessTokens.create({
      created: new Date(),
      ttl: ttl,
    }, cb);
  };

  // initialize passportConfigurator
  //  true => session not used
  passportConfigurator.init(true);
  passportConfigurator.setupModels({
    userModel: app.models.user,
    userIdentityModel: app.models.userIdentity,
    userCredentialModel: app.models.userCredential,
  });
  passportConfigurator.configureProvider('ldap', options);
};
