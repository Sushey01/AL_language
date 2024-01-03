page 50301 SI_Page
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Documents;
    SourceTable = Project4;
    CardPageId = SI_project;


    layout
    {
        area(Content)
        {
            repeater(group)
            {
                field(Bank_Account; rec.Bank_Account)
                {
                    ApplicationArea = All;

                }
                field(Result; rec.Result)
                {
                    ApplicationArea = All;
                }

                field(Loan_Amount; rec.Loan_Amount)
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    var
        myInt: Integer;
}