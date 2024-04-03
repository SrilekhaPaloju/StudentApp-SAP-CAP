const cds = require("@sap/cds");

module.exports = cds.service.impl(async(srv) => {
srv.before("CREATE", "EMPLOYEE", async(req) => {
console.log("Before event is triggered");
})

srv.after("CREATE", "EMPLOYEE" ,async(req) => {
    console.log("After event is triggered");
})
});