const cds = require("@sap/cds");


const { onBeforeEmployeeCreate, onAfterEmployeeCreate } = require('./src/employeeOperations');

module.exports = cds.service.impl(async (srv) => {
    srv.before("CREATE", "employee", onBeforeEmployeeCreate)
    console.log("Before event is triggered");
    srv.after("CREATE", "employee", onAfterEmployeeCreate)
      console.log("After event is triggered");
});
// module.exports = cds.service.impl(async(srv) => {
// srv.before("CREATE", "employee", async(req) => {

// })

// srv.after("CREATE", "employee" ,async(req) => {

// })
//});