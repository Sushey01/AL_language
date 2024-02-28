page 50100 "PLAYER LIST PAGE"
{
    PageType = List;
    UsageCategory = Lists;
    ApplicationArea = All;
    SourceTable = PLAYERS;
    
    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("Players details";Rec."Players details")
                {
                    ApplicationArea = All;
                }
                field("player number";Rec."player number")
                {
                    ApplicationArea = All;
                }
                field("player stats";Rec."player stats")
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