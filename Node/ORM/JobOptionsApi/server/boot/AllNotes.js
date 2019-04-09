'use strict';

// module.exports = function(app) {
//   let ds = app.dataSources.Applications;
//   app.getallnotes = function(applicantId, cb) {
//     let sql = "EXEC `usp_GetAllNotes`('" + applicantId + "');";
//     ds.connector.query(sql, function(err, data) {
//       if (err) {
//         console.log('Error:', err);
//       }
//       cb(null, data);
//       console.log('data:', data);
//     });
//   };
//   app.remoteMethod(
//     'getallnotes',
//     {
//       accepts: [
//         {arg: 'applicantid', type: 'number'},
//       ],
//       returns: {arg: 'result', type: 'object'},
//       http: {path: '/getallnotes', verb: 'post'},
//     }
//   );
// };
