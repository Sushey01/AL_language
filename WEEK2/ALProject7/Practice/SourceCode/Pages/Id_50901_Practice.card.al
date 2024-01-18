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
                        Tax := (rec."Total Salary" / 100 * 5);
                        Message('Your Tax percent is 5% and Your Tax Amount is %1', Tax);
                    end
                    else
                        if (rec."Total Salary" >= 10000) and (rec."Total Salary" <= 50000) then begin
                            Tax := (rec."Total Salary" / 100 * 10);
                            Message('Your Tax percent is 10% and Your Tax amount is %1', Tax);
                        end
                        else begin
                            tax := (rec."Total Salary" / 100 * 15);
                            Message('Your Tax percent is 15% and Your Tax amount is %1', Tax);
                        end;

                end;
            }
        }
    }

    var
        myInt: Integer;
}