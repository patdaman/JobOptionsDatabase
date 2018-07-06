'use strict'

var exec = require('child_process').exec;
// import { exec } from 'child_process';

/**
 * Execute simple shell command (async wrapper).
 * @param {String} cmd
 * @return {Object} { stdout: String, stderr: String }
 */
async function sh(cmd) {
  return new Promise(function (resolve, reject) {
    exec(cmd, (err, stdout, stderr) => {
      if (err) {
        reject(err);
      } else {
        resolve({ stdout, stderr });
      }
    });
  });
}

/**
 * Execute simple shell command (async wrapper).
 * @param {Object} dbConfig
 * dbConfig = {
 *   type: env.db.type,
 *   host: env.db.host,
 *   port: env.db.port,
 *   schema: env.db.schema,
 *   username: env.db.username,
 *   password: env.db.password,
 *   database: env.db.database,
 *   outdir: env.db.models,
 * }
 * @return {Object} { stdout: String, stderr: String }
*/
async function refreshModels(dbConfig) {
  const command = `npx typeorm-model-generator -h ${dbConfig.host} -d ${dbConfig.database} -u ${dbConfig.username} -x ${dbConfig.password} -e ${dbConfig.type} -o ${dbConfig.outdir} --noConfig true --ce camel --noConfig --generateConstructor`;
  let { stdout } = await sh(command);
  for (let line of stdout.split('\n')) {
    console.log(`ls: ${line}`);
  }
}

// const test = {type: 'mssql', host: 'hal9000', port: '1433', schema: 'dbo', username: 'patman', password: 'Patman7474!', database: 'ApplicationsTest', outdir: 'src/api/models'};
// refreshModels(test);