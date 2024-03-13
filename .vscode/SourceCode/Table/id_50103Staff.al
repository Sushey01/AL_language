table 50103 "Staff Table"
{
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1;"Staff Name"; text[20])
        {
            DataClassification = ToBeClassified;
            
        }
        field(2; "Staff Id"; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(3; "Staff Number"; Integer)
        {
            DataClassification = ToBeClassified;
        }
    }
    
    keys
    {
        key(Key1; "Staff Name")
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