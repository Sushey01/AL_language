page 50861 "Wedding Card"
{
    PageType = Card;
    SourceTable = Wedding;
    
    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field("Wedding Id";Rec."Wedding Id")
                {
                    ApplicationArea = All;
                    
                }

                field("Wedding No";Rec."Wedding No")
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