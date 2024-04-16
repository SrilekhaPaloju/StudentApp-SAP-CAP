
const onBeforeEmployeeCreate = async (req) => {
    const { dob } = req.data;
    const iAge = _getAge(dob);
    req.data.age = iAge;
  };
  
  const onAfterEmployeeCreate = async (req) => {
    // req.fName = `Mr. ${req.fName}`;
    // return req;
  };
  
  const _getAge = (sDate) => {
    const oToday = new Date(),
      oBirthDate = new Date(sDate);
    const age = oToday.getFullYear() - oBirthDate.getFullYear();
    return age;
  };
  
  module.exports = {
    onBeforeEmployeeCreate,
    onAfterEmployeeCreate,
  };