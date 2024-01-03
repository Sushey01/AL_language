table 50103 "Idea Trigger1"
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; Num1; Integer)
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
                rec.Results:=Rec.Num1+Rec.Num2;
                rec.Results:=Rec.Num1-Rec.Num2;
                rec.Results:=Rec.Num1*Rec.Num2;
            end;
        }


        field(3; Results; Decimal)
        {
            DataClassification = CustomerContent;
            Editable = false;
        }

        field(4; IsVisible; Boolean)
        {
            DataClassification = CustomerContent;
        }

    }

    keys
    {
        key(Key1; Num1)
        {
            Clustered = true;
        }
    }

}