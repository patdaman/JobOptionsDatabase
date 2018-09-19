'use strict';
/*
 * Discovers a table schema and outputs it into a file: run this script via:
 * $ node discover-schema.js
 */

var path = require('path');
var fs = require('fs');
var app = require('loopback');
var outputDirectory = path.resolve(__dirname, '..', '..', 'common', 'models');

function callback(err, schema) {
  if (err) {
    console.error(err);
    return;
  }
  if (typeof schema != 'object') {
    throw 'schema object not defined';
  }
  console.log('Auto discovery for schema ' + schema.name);
  /*
  * Convert schema name from CamelCase to dashed lowercase (loopback format
  * for json files describing models), for example: CamelCase -> camel-case.
  */
  // var modelName = schema.name.replace(/([a-z])([A-Z])/g, '$1-$2').toLowerCase();
  var modelName = mapName(null, schema.name);
  console.log('Writing model JSON file: ' + modelName);
  // write model definition JSON file
  var nowMs = Date.now();
  var modelJsonFile = path.join(outputDirectory, modelName + '.json');
  // if JSON file exists
  if (fs.existsSync(modelJsonFile)) {
    // save a backup copy of the JSON file
    let backupFile = path.join(outputDirectory, modelName + '.json' + '.bkp_' + nowMs);
    fs.renameSync(modelJsonFile, backupFile);
    console.log('Backing up old JSON file..');
  }
  // write the new JSON file
  fs.writeFileSync(
    modelJsonFile,
    JSON.stringify(schema, null, 2)
  );
  var objectJSON = JSON.parse(fs.readFileSync(modelJsonFile));
  if (objectJSON.hasOwnProperty('properties')) {
    var propertiesObject = objectJSON['properties'];
    if (propertiesObject.hasOwnProperty('id')) {
      propertiesObject['id'].generated = true;
      propertiesObject['id'].idInjection = false;
      propertiesObject['id'].required = false;
    }
    if (propertiesObject.hasOwnProperty('CreateDate')) {
      propertiesObject['CreateDate'].required = false;
    }
    if (propertiesObject.hasOwnProperty('CreateUser')) {
      propertiesObject['CreateUser'].required = false;
    }
    if (propertiesObject.hasOwnProperty('ModifyDate')) {
      propertiesObject['ModifyDate'].required = false;
    }
    if (propertiesObject.hasOwnProperty('ModifyUser')) {
      propertiesObject['ModifyUser'].required = false;
    }
  }
  fs.writeFileSync(
    modelJsonFile,
    JSON.stringify(objectJSON, null, 2)
  );
  console.log('JSON saved to ' + modelJsonFile);

  console.log('Writing model JS file..');
  // write model JS file, useful to extend a model with custom methods
  var modelJSFile = path.join(outputDirectory, modelName + '.js');
  // if JS file exists
  if (fs.existsSync(modelJSFile)) {
    // save a backup copy of the JS file
    let backupFile = path.join(outputDirectory, `${modelName}.js.bkp_${nowMs}`);
    fs.renameSync(modelJSFile, backupFile);
    console.log('Backing up old JS file..');
  }
  // write the new JS file
  fs.writeFileSync(
    modelJSFile,
    `'use strict';
    module.exports=function(${modelName}) {};`
  );
  console.log('JS saved to ' + modelJSFile);

  // Append model to model-config.json
  var modelConfigFile = path.resolve(__dirname, '../model-config.json');
  var modelConfigObj = JSON.parse(fs.readFileSync(modelConfigFile, 'utf8'));
  if (typeof modelConfigObj[modelName] === 'undefined') {
    let datasource = process.argv[3];
    modelConfigObj[modelName] = {'dataSource': datasource, 'public': true};
    let jsonContent = JSON.stringify(modelConfigObj, null, 2);
    fs.writeFileSync(modelConfigFile, JSON.stringify(modelConfigObj, null, 2));
  }
}

function printUsage() {
  console.log('\nUsage: node discover-schema.js [-ds datasource -sn db_schemaName]\n' +
    '\t-ds datasource: name of the datasource as specified in datasources.json\n' +
    '\t-sn db_schemaName: name of the table in the db\n');
}

// custom name mapper
function mapName(type, name) {
  return name;
};

function main() {
  switch (process.argv.length) {
    /*
    * if there are 6 params (first and second are execPath and JS file being executed)
    */
    case 6:
      // should be datasource
      var param11 = process.argv[2];
      var datasource = process.argv[3];
      // should be db schema name
      var param21 = process.argv[4];
      var schemaName = process.argv[5];
      var datasourceJSON = JSON.parse(fs.readFileSync(path.resolve(__dirname, '..', 'datasources.json'), 'utf8'));
      if (param11 === '-ds' && param21 === '-sn' && datasourceJSON.hasOwnProperty(datasource)) {
        var options = {};
        options.nameMapper = mapName;
        options.associations = true;
        options.relations = false;
        options.views = true;
        var ds = app.createDataSource(datasource, datasourceJSON[datasource]);
        ds.discoverSchema(schemaName, options, callback);
      } else {
        printUsage();
      }
      break;
    default:
      printUsage();
  }
}

// main function
main();
