table 50180 "Idea Trigger"
{
    DataClassification = CustomerContent;
    
    fields
    {
        field(1;Num1; Integer)
        {
            DataClassification = CustomerContent;
            trigger OnValidate()
            var
                myInt: Integer;
            begin
                
            end;
        }

        field(2; Num2; Decimal)
        {
            DataClassification = CustomerContent;
            trigger OnValidate()
            begin
               Multiply:=Num1*Num2;
               addition:=num1+num2;
               subtract:=num1-num2;
               Rec.modify();

            end;
        }


        field(4; Addition; Decimal)
        {
            DataClassification = CustomerContent;
            Editable = false;
        }

        field(5; Multiply; Decimal)
        {
            DataClassification = ToBeClassified;
            Editable=false;
        }

        field(6; subtract; decimal)
        {
            DataClassification = ToBeClassified;
            Editable=false;
        }

    }
    
    keys
    {
        key(Key1; Num1)
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
       Message('DATA IS INSERTED %1', num1); 
    end;
    
    trigger OnModify()
    begin
        Message('DATA IS MODIFIED %1 %2', num1, Num2);
    end;
    
    trigger OnDelete()
    begin
        Message('DATA HAS BEEN DELETED %1', num1);
    end;
    
    trigger OnRename()
    begin
        
    end;
    
}