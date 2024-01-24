tableextension 50856 Salesext extends "Sales & Receivables Setup"
{
    fields
    {
        // Add changes to table fields here
        field(5000; "Parking No"; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation= "No. Series";
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