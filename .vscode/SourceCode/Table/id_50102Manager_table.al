table 50102 MANAGER
{
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1;Manager_Name; Text[20])
        {
            DataClassification = ToBeClassified;
            
        }
        field(2; Experience; Integer)
        {
            DataClassification = ToBeClassified;
        }
    }
    
    keys
    {
        key(Key1; Manager_Name)
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