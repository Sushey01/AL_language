tableextension 50320 "JPT" extends "Customer"
{
    fields
    {
        field(50025; Customer_Details; Code[20])
        {
            DataClassification = CustomerContent;
        }
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