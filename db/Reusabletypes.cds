namespace reusable.types;

type Amount : Decimal(10, 2);
type email: String @assert.format:'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$';
type phone: String @assert.format:'^\+(?:[0-9] ?){6,14}[0-9]$';


aspect PersonDetails{
    fName:String;
    lName:String;
}

