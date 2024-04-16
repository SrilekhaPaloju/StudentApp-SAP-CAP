namespace demo.db;

using {reusable.types as types} from './Reusabletypes';
using {cuid } from '@sap/cds/common';


@assert.unique: {
    email: [email],
    phone: [phone]
}

entity employee :cuid, types.PersonDetails {
        // key ID    : UUID;
        // fName:String;
        // lName:String;
        dob   : Date;
        age : Integer;
        email : types.email not null;
        phone : types.phone not null;
        address :Composition of  Address;
        Salary          : Composition of Salary ;
        department      : Association to Department;
        designation     : Association to Designation;
}

entity Address : cuid{
  
      city     : String not null;
      address  : String not null;
      pincode  : Integer not null;
      street   : String;
      landmark : String;
      employee : Association to employee;
}

entity Department : cuid {
  name        : String;
  description : String;
  headCount   : Integer;
}

entity Salary : cuid {
  costToCompany : types.Amount;
  employeePf    : types.Amount;
  employerPf    : types.Amount;
  nps           : types.Amount;
  vpf           : types.Amount;
}

entity Designation : cuid {
  name        : String;
  description : String;
  level       : String;
}
