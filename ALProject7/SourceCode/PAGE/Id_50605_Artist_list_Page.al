page 50605 "Page of Artist"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Artist Table";
    
    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(Artist_Id;Rec.Artist_Id)
                {
                    ApplicationArea = All;
                    
                }
                field(Manager_Name;Rec.Manager_Name)
                {
                    ApplicationArea = All;
                }
                field(Charge;Rec.Charge)
                {
                    ApplicationArea = All;
                }
                field(Gender;Rec.Gender)
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