// Copyright IBM Corp. 2015,2016. All Rights Reserved.
// Node module: loopback-example-access-control
// This file is licensed under the Artistic License 2.0.
// License text available at https://opensource.org/licenses/Artistic-2.0
'use strict';

var ensureLoggedIn = require('connect-ensure-login').ensureLoggedIn;

module.exports = function(app) {
  app.get('/failure', function(req, res) {
    res.sendStatus(401);
  });

  // // login page
  // app.get('/', function(req, res) {
  //   var credentials = dsConfig.emailDs.transports[0].auth;
  //   res.render('login', {
  //     email: credentials.user,
  //     password: credentials.pass,
  //   });
  // });

  // verified
  app.get('/verified', function(req, res) {
    res.render('verified');
  });

  var ensureLoggedIn = require('connect-ensure-login').ensureLoggedIn;
  app.get('/', function(req, res, next) {
    res.render('pages/index', {
      user:
        req.user,
      url: req.url,
    });
  });
  app.get('/auth/account', ensureLoggedIn('/login'), function(req, res, next) {
    res.render('pages/loginProfiles', {
      user: req.user,
      url: req.url,
    });
  });
  app.get('/local', function(req, res, next) {
    res.render('pages/local', {
      user: req.user,
      url: req.url,
    });
  });
  app.get('/ldap', function(req, res, next) {
    res.render('pages/ldap', {
      user: req.user,
      url: req.url,
    });
  });
  app.get('/signup', function(req, res, next) {
    res.render('pages/signup', {
      user: req.user,
      url: req.url,
    });
  });
  app.post('/signup', function(req, res, next) {
    var User = app.models.user;
    var newUser = {};
    newUser.email = req.body.email.toLowerCase();
    newUser.username = req.body.username.trim();
    newUser.password = req.body.password;
    User.create(newUser, function(err, user) {
      if (err) {
        req.flash('error', err.message);
        return res.redirect('back');
      } else {
        // Passport exposes a login() function on req (also aliased as logIn())
        // that can be used to establish a login session. This function is
        // primarily used when users sign up, during which req.login() can
        // be invoked to log in the newly registered user.
        req.login(user, function(err) {
          if (err) {
            req.flash('error', err.message);
            return res.redirect('back');
          }
          return res.redirect('/auth/account');
        });
      }
    });
  });
  app.get('/login', function(req, res, next) {
    res.render('pages/login', {
      user: req.user,
      url: req.url,
    });
  });
  app.get('/auth/logout', function(req, res, next) {
    req.logout();
    res.redirect('/');
  });
  // var router = app.loopback.Router();

  // router.get('/', function(req, res) {
  //   res.render('index', {
  //     loginFailed: false,
  //   });
  // });

  // router.get('/projects', function(req, res) {
  //   res.render('projects');
  // });

  // router.post('/projects', function(req, res) {
  //   var email = req.body.email;
  //   var password = req.body.password;

  //   app.models.User.login({
  //     email: email,
  //     password: password,
  //   }, 'user', function(err, token) {
  //     if (err)
  //       return res.render('index', {
  //         email: email,
  //         password: password,
  //         loginFailed: true,
  //       });

  //     token = token.toJSON();

  //     res.render('projects', {
  //       username: token.user.username,
  //       accessToken: token.id,
  //     });
  //   });
  // });

  // router.get('/logout', function(req, res) {
  //   var AccessToken = app.models.AccessToken;
  //   var token = new AccessToken({id: req.query['access_token']});
  //   token.destroy();

  //   res.redirect('/');
  // });

  // app.use(router);
};
