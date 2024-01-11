page 50600 "PAGE VENUE"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = VENUE;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(Venue_Id; Rec.Venue_Id)
                {
                    ApplicationArea = All;

                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                }

                // accomodation quantity

                field(Acc_Qty; Rec.Acc_Qty) 
                {
                    ApplicationArea = All;
                }
                field(Country; Rec.Country)
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