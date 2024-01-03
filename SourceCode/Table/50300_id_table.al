table 50300 Project4
{
    DataClassification = CustomerContent;
    
    fields
    {
        field(1;Loan_Amount; Decimal)
        {
            DataClassification = CustomerContent;
            Caption= 'Principal Amount';
        }
        field(2; Loan_Started; Date)
        {
            DataClassification = CustomerContent;
        }
        field(3; Loan_Ended; Date)
        {
            DataClassification = CustomerContent;
        }

        field(4; Bank_Account; Code[25])
        {
            DataClassification = CustomerContent;
        }

        field(5; Bank_Account_Name; Code[30])
        {
            DataClassification = CustomerContent;
        }

        field(6; Time; Integer)
        {
            DataClassification = CustomerContent;
        }

        field(7; Rate; Integer)
        {
            DataClassification = CustomerContent;
            trigger OnValidate()
            var
                myInt: Integer;
            begin
                
            end;
        }

        field(8; Result; Integer)
        {
            DataClassification = CustomerContent;
        }

        // field(9; SimpleInterest; Integer)
        // {
        //     DataClassification = CustomerContent;

        // }
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

    trigger OnInsert()
    var
        myInt: Integer;
    begin
        Message('Data is inserted %1 %2', Loan_Amount, Loan_Started);
    end;

    trigger OnModify()
    var
        myInt: Integer;
    begin
        Message('Data is modified');
    end;
    
}