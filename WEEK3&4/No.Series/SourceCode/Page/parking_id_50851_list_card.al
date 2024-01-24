page 50851 "Parking Card"
{
    PageType = Card;
    SourceTable = Parking;

    
    layout
    {
        area(Content)
        {
            group(General)
            {
                   field("Parking Id"; rec."Parking ID")
                {
                    ApplicationArea = All;
                    
                }

                field("Parking Vehicle";Rec."Parking Vehicle")
                {
                    ApplicationArea = All;
                    
                }

                field("Parking no.series";Rec."Parking no.series")
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