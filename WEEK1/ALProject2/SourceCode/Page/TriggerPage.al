page 50180 Page2
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Idea Trigger";
    CardPageId=TRRIGER;
    
    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field(Num1; rec.Num1)
                {
                    ApplicationArea = All;
                    
                }

                field(Num2; rec.Num2)
                {
                    ApplicationArea = All;
                    
                }

                field(Addition; Rec.Addition)
                {
                    ApplicationArea = All;
                    
                }

                field(subtract; Rec.subtract)
                {
                    ApplicationArea = All;
                    
                }

                field(Multiply; Rec.Multiply)
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