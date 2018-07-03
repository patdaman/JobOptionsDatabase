'use strict';

var path = require('path');

var app = require(path.resolve(__dirname, '../server'));
var ds = app.datasources.Applications;
ds.discoverSchema('Applicant', {schema: 'dbo', associations: true}, function(err, schema) {
  if (err) throw err;

  var json = JSON.stringify(schema, null, '  ');
  console.log(json);

  ds.disconnect();
});
