page 50149 Shekhar
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Bank1;
    CardPageId = MyPage;
    
    layout
    {
        area(Content)
        {
            repeater(GENEREALINFORMATION)
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

        area(FactBoxes)
        {

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