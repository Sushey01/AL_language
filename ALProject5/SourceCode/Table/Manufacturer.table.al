table 50253 Manufacturing
{
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1;Manufacture_Id; Code[30])
        {
            DataClassification = ToBeClassified;
            
        }

        field(2; "vehicle Type"; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers="", car, Bike, Truck;
        }

        field(3; Year; Date)
        {
            DataClassification = CustomerContent;
        }
    }
    
    keys
    {
        key(Key1; "Manufacture_Id")
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