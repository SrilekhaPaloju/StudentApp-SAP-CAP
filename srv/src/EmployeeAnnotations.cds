using { employeeService } from '../employeeService';

annotate employeeService.employee with {
fName @title: '{i18n>FName}';
lName @title: '{i18n>LName}';
}

