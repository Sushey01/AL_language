tableextension 50111 CustomerExt extends Customer
{
    fields
    {
        field(50111; "External No."; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        // Add changes to table fields here
    }
    
    keys
    {
        // Add changes to keys here
    }
    
    fieldgroups
    {
        // Add changes to field groups here
    }
    
    var
        myInt: Integer;
}