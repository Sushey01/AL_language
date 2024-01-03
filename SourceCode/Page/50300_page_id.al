page 50300 SI_project
{
    PageType = Card;
    UsageCategory = Documents;
    SourceTable = Project4;

    layout
    {
        area(Content)
        {
            group(General)
            {
                field(Time; Rec.time)
                {
                    ApplicationArea = All;

                }
                field(Rate; rec.Rate)
                {
                    ApplicationArea = All;
                }

                field(Loan_Amount; Rec.Loan_Amount)
                {
                    ApplicationArea = All;
                    ToolTip = 'Total Amount';
                }

                field(Loan_Ended; REC.Loan_Ended)
                {
                    ApplicationArea = All;
                }

                field(Loan_Started; rec.Loan_Started)
                {
                    ApplicationArea = All;
                }

                field(Bank_Account; rec.Bank_Account)
                {
                    ApplicationArea = All;
                }

                field(Bank_Account_Name; rec.Bank_Account_Name)
                {
                    ApplicationArea = All;
                }

                field(Result; rec.Result)
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
            action(Interest_Amount)
            {
                ApplicationArea = All;

                trigger OnAction();
                begin
                    if Rec.Loan_Amount = 0 then begin
                        Error('Apply for the Loan first');
                    end
                    else
                        if rec.Rate = 0 then begin

                            Error('Rate is zero for the first three months');
                        end

                        else
                            if Rec.Result < 0 then begin
                                Error('Loan is not Granted');
                            end
                            else begin
                                rec.Result := (rec.Loan_Amount * rec.Time * rec.Rate) / 100;
                            end
                end;
            }

            action(Recorded_Amount)
            {
                ApplicationArea = All;

                trigger OnAction();
                begin
                    if Rec.Loan_Amount >=0 then begin
                        Error('Loan Granted');
                    end
                    else
                        if rec.Rate = 9 then begin

                            Error('Rate is 9 percent');
                        end

                        else
                            if Rec.Result <=0 then begin
                                Error('Loan is not Granted');
                            end
                end;
            }

        }
    }

    trigger OnOpenPage()
    var
        myInt: Integer;
    begin
        Message('Welcome Shekhar Lamichhane Magar');
    end;

    var
        myInt: Integer;
}