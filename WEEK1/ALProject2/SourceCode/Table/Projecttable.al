table 50149 Bank1
{
    DataClassification = CustomerContent;
    
    fields
    {
        field(1;Loan_number; code[25])
        {
            DataClassification = CustomerContent;
            
        }

        field(2; Description_text; text[100])
        {
            DataClassification = CustomerContent;
        }

        field(3; Loan_Amount; Decimal)
        {
            DataClassification = CustomerContent;
        }

        field(4; Loan_started; Date)
        {
            DataClassification = CustomerContent;
        }

        field(5; Loan_ended; Date)
        {
            DataClassification = ToBeClassified;
        }

        field(6; Bank_account; Code[25])
        {
            DataClassification = ToBeClassified;
        }

        field(7; Bank_account_name; text[100])
        {
            DataClassification = ToBeClassified;
        }
    }
    
    keys
    {
        key(Key1; Loan_Amount)
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
    
}