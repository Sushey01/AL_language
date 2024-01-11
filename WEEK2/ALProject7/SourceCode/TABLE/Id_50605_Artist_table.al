table 50605 "Artist Table"
{
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1;Artist_Id; Code[20])
        {
            DataClassification = ToBeClassified;
            
        }
        field(2; Manager_Name; text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(3; Charge; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(4; Gender; Option)
        {
            OptionMembers = "",Male,Female,Others;
        }
    }
    
    keys
    {
        key(Key1; Artist_Id)
        {
            Clustered = true;
        }
    }
    
    fieldgroups
    {
        // Add changes to field groups here
    }
    
    var
        myInt: Integer;
    
    trigger OnInsert()
    begin
        
    end;
    
    trigger OnModify()
    begin
        
    end;
    
    trigger OnDelete()
    begin
        
    end;
    
    trigger OnRename()
    begin
        
    end;
    
}