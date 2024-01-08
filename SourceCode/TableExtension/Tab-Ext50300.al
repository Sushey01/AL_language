tableextension 50300 MyExtension extends Vendor
{
    fields
    {
        // Add changes to table fields here
        field(50000; Acc_Name; Code[25])
        {
            DataClassification = CustomerContent;
            Caption= 'Account_Name';
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