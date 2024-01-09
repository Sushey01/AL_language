table 50250 "Showroom"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Vehicle ID"; Code[30])
        {
            DataClassification = ToBeClassified;
        }
        field(2; "Manufacturer ID"; Code[30])
        {
            DataClassification = ToBeClassified;
            TableRelation = "manufacturing";
        }
        field(3; "Vehicle Type"; Option)
        {
            OptionMembers = "",Car,Bike,Truck;
            FieldClass = FlowField;
            CalcFormula = lookup(Manufacturing."vehicle Type" WHERE(Manufacture_Id=field("Manufacturer ID")));
            trigger OnValidate()
            var
                myInt: Integer;
            begin
                
            end;
        }
        field(4; "Engine Type"; Option)
        {
            OptionMembers = "",Petrol,Diesel;
        }
        field(5; "Year"; Date)
        {
            FieldClass=FlowField;
            CalcFormula = lookup(Manufacturing.Year where(Manufacture_Id=field("Manufacturer ID")));
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
