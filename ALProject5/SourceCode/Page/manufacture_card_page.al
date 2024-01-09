page 50303 Manufacture_card_page
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Manufacturing;

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field(Manufacture_Id; Rec.Manufacture_Id)
                {
                    ApplicationArea = All;

                }
                field("vehicle Type"; Rec."vehicle Type")
                {
                    ApplicationArea = All;

                }
                field(Year; Rec.Year)
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