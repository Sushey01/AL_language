table 50100 PLAYERS
{
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1;"Players details"; Code[20])
        {
            DataClassification = ToBeClassified;
            
        }
        field(2; "player number"; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(3; "player stats"; text[20])
        {
            DataClassification = ToBeClassified;
        }
        field(4; Gender; Option)
        {
            OptionMembers = "", male, female, others;
        }
    }
    
    keys
    {
        key(Key1; "player number")
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