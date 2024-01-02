page 50150 MyPage
{
    PageType = Card;
    UsageCategory = Documents;
    SourceTable = Bank1;

    layout
    {
        area(Content)
        {
            group(Informations)
            {
                field(Loan_number; rec.Loan_number)
                {
                    ApplicationArea = All;

                }

                field(Description_text; rec.Description_text)
                {
                    ApplicationArea = All;

                }

                field(Loan_Amount; rec.Loan_Amount)
                {
                    ApplicationArea = All;

                }

                field(Loan_started; rec.Loan_started)
                {
                    ApplicationArea = All;

                }

                field(Loan_ended; rec.Loan_ended)
                {
                    ApplicationArea = All;

                }

                field(Bank_account; rec.Bank_account)
                {
                    ApplicationArea = All;

                }

                field(Bank_account_name; rec.Bank_account_name)
                {
                    ApplicationArea = All;

                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}