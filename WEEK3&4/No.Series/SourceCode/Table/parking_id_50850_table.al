table 50850 Parking
{
    DataClassification = ToBeClassified;
    
    fields
    {

        field(1;"Parking ID"; Code[20])
        {
            DataClassification = ToBeClassified;
            
        }

        field(2; "Parking Vehicle"; code[20])
        {
            DataClassification = ToBeClassified;
        }

        field(3; "Parking no.series"; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
    }
    
    keys
    {
        key(Key1; "Parking ID")
        {
            Clustered = true;
        }
    }
    
    fieldgroups
    {
        // Add changes to field groups here
    }

    
    trigger OnInsert()
    begin
        if "Parking ID"= '' then begin
           SalesRcvSetup.Get();
           NoSerisMgt.InitSeries(SalesRcvSetup."Parking No", SalesRcvSetup."Parking No", 0D, "Parking ID", "Parking no.series"); 
        end
    end;
    
    var
    SalesRcvSetup: Record "Sales & Receivables Setup";
    NoSerisMgt: Codeunit NoSeriesManagement;
    
}