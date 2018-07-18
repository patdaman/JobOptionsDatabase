'use strict';

const path = require('path');
const fs = require('fs');
const sql = require('mssql');
const discoverSchema = require('./discover-schema');


const datasource_json = JSON.parse(fs.readFileSync(path.resolve(__dirname, '..', 'datasources.json'), 'utf8'));
for (var db in datasource_json) {
  var dbName = db[0];
  const tableQuery = `SELECT TABLE_CATALOG AS [Database], TABLE_SCHEMA AS [Schema], TABLE_NAME AS [TableName]
  FROM INFORMATION_SCHEMA.TABLES
  WHERE TABLE_TYPE = 'BASE TABLE' AND TABLE_CATALOG='${dbName}'`;

  var param11 = '-ds';
  console.log(db);
  console.log(dbName);
  var datasource = db;

  var param21 = '-sn';
  var schema_name = tableName;

}
