page 50179 TRRIGER
{
    PageType = Card;
    UsageCategory = None;
    SourceTable = "Idea Trigger";
    
    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field(Num1; Rec.Num1)
                {
                    ApplicationArea = All;
                    
                }

                field(Num2; Rec.Num2)
                {
                    ApplicationArea = All;
                    
                }

                field(Addition; Rec.Addition)
                {
                    ApplicationArea = All;
                    
                }

                field(Multiply; Rec.multiply)
                {
                    ApplicationArea = All;
                    
                }

                field(subtract; Rec.subtract)
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