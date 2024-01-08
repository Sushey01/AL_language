tableextension 50310 tab1 extends Item
{
    fields
    {
        // Add changes to table fields here
        field(50005; Custom_Item; Code[30])
        {
            DataClassification = CustomerContent;
            Caption='CustomerkoName';
        }
    }
    
    
    fieldgroups
    {
        // Add changes to field groups here
    }
    
    var
        myInt: Integer;
}