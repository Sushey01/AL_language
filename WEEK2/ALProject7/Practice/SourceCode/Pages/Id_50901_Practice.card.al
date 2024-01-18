page 50901 "TAX CARD"
{
    PageType = Card;
    UsageCategory = None;
    SourceTable = TAX;

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field("Total Salary"; Rec."Total Salary")
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
            action(TAX)
            {
                ApplicationArea = All;

                trigger OnAction()
                var
                    tax: Decimal;
                begin
                    if rec."Total Salary" < 10000 then begin
                        Tax := (rec."Total Salary" / 5 * 100);
                        Message('Your Tax is 5% and Your Tax Amount is %1', Tax);
                    end
                    else
                        if (rec."Total Salary" >= 10000) and (rec."Total Salary" <= 50000) then begin
                            Tax := (rec."Total Salary" / 10 * 100);
                            Message('Your Tax is 10% and Your Tax amount is %1', Tax);
                        end
                        else
                            tax := (rec."Total Salary" / 15 * 100);
                    Message('Your Tax is 15% and Your Tax amount is %1', Tax);

                end;
            }
        }
    }

    var
        myInt: Integer;
}