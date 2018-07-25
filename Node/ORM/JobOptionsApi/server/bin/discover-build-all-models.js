'use strict';

const path = require('path');
const fs = require('fs');
const sql = require('mssql');
const {exec} = require('child_process');

const datasource_json = JSON.parse(fs.readFileSync(path.resolve(__dirname, '..', 'datasources.json'), 'utf8'));
for (var ds in datasource_json) {
  console.log(JSON.stringify(ds));
  var filter = '';
  if (!typeof (ds['database']) == 'undefined')
    filter = `WHERE TABLE_TYPE = 'BASE TABLE' AND TABLE_CATALOG='${dbName}'`;
  var dbName = ds['database'];
  const tableQuery = `SELECT TABLE_CATALOG AS [Database], TABLE_SCHEMA AS [Schema], TABLE_NAME AS [TableName]
  FROM INFORMATION_SCHEMA.TABLES
  ${filter}`;
  var result;
  try {
    const conn = sql.connect('mssql://sa:poipu007@databaseserver/Applications');
    result = sql.query(tableQuery);
    console.log(result.toString());
  } catch (err) {
    console.log('Error querying the database: ' + err.toString());
  }
  if (result) {
    for (var table in tableQuery) {
      var param11 = '-ds';
      console.log(`${dbName} importing`);
      var params = ` -ds ${ds[0]} -sn ${table}`;
      // exec(`discover-schema ${params}`, (err, stdout, stderr) => {
      //   if (err) {
      //     console.log(`Node could not execute the command \r\n ${stderr}`);
      //     return;
      //   }
      //   console.log(`stdout: ${stdout}`);
      // });
    }
  }
}
