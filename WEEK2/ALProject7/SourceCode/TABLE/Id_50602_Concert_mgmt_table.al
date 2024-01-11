table 50602 "Concert Table"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; Concert_Id; Code[20])
        {
            DataClassification = ToBeClassified;

        }
        field(2; Venue; text[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = VENUE;
            trigger OnValidate()
            var
                Concert: Record VENUE;
                Country: Record "Country/Region";
            begin
                if Concert.Get(Venue) then
                    if Country.Get(Concert.Country) then
                        rec.Country := Country.Name;
            end;
        }
        field(3; Country; Text[30])
        {
            DataClassification = ToBeClassified;
            Editable = false;

        }
        field(4; Artist; text[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = "Artist Table";
            trigger OnValidate()
            var
                art: Record "Artist Table";
            begin
                if art.Get(Artist) then
                    rec.Manager_Name := art.Manager_Name;
            end;
        }
        field(5; Manager_Name; text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(6; Charge_Fee; Decimal)
        {
            FieldClass = FlowField;
            CalcFormula = lookup("Artist Table".Charge where(Artist_Id = field(Artist)));
        }
    }

    keys
    {
        key(Key1; Concert_Id)
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
        Message('Data inserted');
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