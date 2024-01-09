page 50250 WORKSHOP
{
    PageType = list;
    UsageCategory = none;
    SourceTable = Showroom;
    CardPageId = Module;
    
    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field("vehicle id"; Rec."vehicle id")
                {
                    ApplicationArea = All;
                }
                field("vehicle Type";Rec."vehicle Type")
                {
                    ApplicationArea = All;
                }

                field("Engine Type"; Rec."Engine Type")
                {
                    ApplicationArea = All;
                }

                field(Year; rec.Year)
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