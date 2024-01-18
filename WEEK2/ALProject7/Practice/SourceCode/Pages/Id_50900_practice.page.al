page 50900 "Tax List"
{
    PageType = List;
    UsageCategory = Lists;
    SourceTable = TAX;

    layout
    {
        area(Content)
        {
            group(General)
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