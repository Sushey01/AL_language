page 50850 "Parking List"
{
    PageType = List;
    UsageCategory = Lists;
    ApplicationArea = All;
    SourceTable = Parking;
    CardPageId= "Parking Card";
    
    layout
    {
        area(Content)
        {
            repeater(Group)
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
        area(Factboxes)
        {
            
        }
    }
    
    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;
                
                trigger OnAction();
                begin
                    
                end;
            }
        }
    }
}