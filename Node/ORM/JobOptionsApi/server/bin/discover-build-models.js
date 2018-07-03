'use strict';

var path = require('path');
var lbDatasource = 'Applications';
var tableObject = 'Applicant';
var app = require(path.resolve(__dirname, '../server'));

var ds = app.datasources[lbDatasource];
ds.discoverAndBuildModels('Applicant', {schema: 'dbo'},
    function(err, models) {
  if (err) throw err;

  models[tableObject].find(function(err, applicants) {
    if (err) throw err;

    console.log('Found:', applicants);

    ds.disconnect();
  });
});