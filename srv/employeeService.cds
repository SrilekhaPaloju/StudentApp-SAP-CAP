using {demo.db as db} from '../db/data-model';


@path:'/employeesrv'

service employeeService{
    entity employee as projection on db.employee;
    entity address as projection on db.Address;
    entity Department as projection on db.Department;
    entity Designation as projection on db.Designation;
    entity Salary as projection on db.Salary;     
    }
        
        annotate employeeService.employee with @(
            Capabilities: {
                InsertRestrictions : {
                    $Type : 'Capabilities.InsertRestrictionsType',
                    Insertable:true
                },
               UpdateRestrictions : {
                   $Type : 'Capabilities.UpdateRestrictionsType',
                   Updatable: false
                   
               },
                DeleteRestrictions : {
                    $Type : 'Capabilities.DeleteRestrictionsType',
                    Deletable: false
                    
                },
            }
        );
        
        
