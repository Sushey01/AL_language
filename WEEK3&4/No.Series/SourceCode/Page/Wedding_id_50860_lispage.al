page 50860 "Wedding List"
{
    PageType = List;
    UsageCategory = Lists;
    ApplicationArea = All;
    SourceTable = Wedding;
    CardPageId =  "Wedding Card";
    
    layout
    {
        area(Content)
        {
            repeater(Group)
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