page 50806 "Multiply Card"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Multiply Table";
    
    layout
    {
        area(Content)
        {
            group(General)
            {
                field(Number;Rec.Number)
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
            action(Multiply)
            {
                ApplicationArea = All;
                
                trigger OnAction()
                var
                count:Integer;
                multiplication:Integer;
                begin
                    count:=0;
                    multiplication:=0;
                    repeat
                        multiplication := rec.Number*count;
                        Message('Multiplication of %1 by %2 is %3', count, multiplication, rec.number);
                        count:=count +1;
                    until
                    count=11;
                end;
            }
        }
    }
    
    var
        myInt: Integer;
}