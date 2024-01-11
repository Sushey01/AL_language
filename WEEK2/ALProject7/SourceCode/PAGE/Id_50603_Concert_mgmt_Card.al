page 50603 "Concert Card"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Concert Table";
    
    layout
    {
        area(Content)
        {
            group(GENERAL)
            {
                field(Concert_Id;Rec.Concert_Id)
                {
                    ApplicationArea = All;
                    
                }
                field(Venue;Rec.Venue)
                {
                    ApplicationArea = All;
                }
                field(Country;Rec.Country)
                {
                    ApplicationArea = All;
                }
                field(Artist;Rec.Artist)
                {
                    ApplicationArea = All;
                }
                field(Manager_Name;Rec.Manager_Name)
                {
                    ApplicationArea = All;
                }
                field(Charge_Fee;Rec.Charge_Fee)
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