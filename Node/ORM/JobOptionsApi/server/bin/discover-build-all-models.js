'use strict';

const path = require('path');
const fs = require('fs');
const sql = require('mssql');
const discoverSchema = require('./discover-schema');

const datasource_json = JSON.parse(fs.readFileSync(path.resolve(__dirname, '..', 'datasources.json'), 'utf8'));
for (var ds in datasource_json) {
  var filter = '';
  if (!typeof(ds['database']) == 'undefined')
    filter = `WHERE TABLE_TYPE = 'BASE TABLE' AND TABLE_CATALOG='${dbName}'`;
  var dbName = ds['database'];
  const tableQuery = `SELECT TABLE_CATALOG AS [Database], TABLE_SCHEMA AS [Schema], TABLE_NAME AS [TableName]
  FROM INFORMATION_SCHEMA.TABLES
  ${filter}`;
  for (var table in tableQuery) {
  var param11 = '-ds';
  console.log(`${dbName} importing`);
  var params = ` -ds ${ds[0]} -sn ${table}`;
  
}
