'use strict';

var server = require('./server');
var dataSource = server.dataSources.Applications;
// var lbTables = ['user', 'accessToken', 'userIdentity', 'userCredential', 'ACL', 'RoleMapping', 'Role'];
let lbTables = ['user', 'userCredential', 'userIdentity', 'accessToken', 'ACL', 'RoleMapping', 'Role'];
// ds.autoupdate(lbTables, function(er) {
dataSource.automigrate(lbTables, function(er) {
  if (er) {
    console.log(er);
    // throw er;
  };
  console.log('Loopback tables [' - lbTables - '] created in ', dataSource.adapter.name);
  dataSource.disconnect();
});
