page 50280 Manufacture_list_page
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Manufacturing;
    CardPageId = 50303;

    layout
    {
        area(Content)
        {
            repeater(groups)
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