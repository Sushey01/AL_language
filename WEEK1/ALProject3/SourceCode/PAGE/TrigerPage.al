page 50103 ActionPage
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Idea Trigger1";
    CardPageId=General_Action;
    
    layout
    {
        area(Content)
        {
            repeater(Generals)
            {
                field(Num1; rec.Num1)
                {
                    ApplicationArea = All;
                    
                }

                field(Num2; rec.Num2)
                {
                    ApplicationArea = All;
                    
                }
                field(Results;Rec.Results)
                {
                    ApplicationArea = All;

                }

            }
        }
    }
    
    actions
    {
    
    }
    
    trigger OnOpenPage()

    begin
        Message('Welcome to the Central Business Shekhar');
    end;
}