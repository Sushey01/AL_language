page 50107 General_Action
{
    PageType = Card;
    ApplicationArea = All;
    SourceTable = "Idea Trigger1";
    
    layout
    {
        area(Content)
        {
            group(GroupName)
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

                field(IsVisible; Rec.IsVisible)
                {
                    ApplicationArea = All;
                    Editable= MakeItvisible;
                }
            }
        }
        area(FactBoxes)
        {

        }
    }
    
    actions
    {
        area(Processing)
        {
            action(Add)
            {
                ApplicationArea = All;
                
                trigger OnAction()
                begin
                    Rec.Results:=Rec.Num1+Rec.Num2
                end;
            }

            action(Multiply)
            {
                ApplicationArea = All;
                
                trigger OnAction()
                begin
                    if Rec.Num1 = 0 then
                    Error('Cannot Multiply')
                    else if Rec.Num2 =  0 then
                    Error('Cannot Multiply')
                    else
                    Rec.Results:=Rec.Num1*Rec.Num2
                end;
            }

            action(Subtract)
            {
                ApplicationArea = All;
                
                trigger OnAction()
                begin
                    if Rec.Num1 <0 then
                    Error('Cannot Subtract')
                    else if Rec.Num2 <=  rec.Num1 then
                    Rec.Results:=Rec.Num1-Rec.Num2
                end;
            }

            action(Divide)
            {
                ApplicationArea = All;
            trigger OnAction()
            begin
                    if Rec.Num1 < 0 then
                    Error('Cannot Divide')
                    else if Rec.Num2 <= rec.Num1 then
                    Rec.Results:=Rec.Num1/Rec.Num2
            end;
        }
    }
    }

    trigger OnOpenPage()
    var
        myInt: Integer;
    begin
        if not rec.IsVisible then begin
        Rec.IsVisible:=true;
        rec.Modify();
        end
    end;

    trigger OnAfterGetRecord()

    var
         myInt: Integer;
    begin
       if Rec.Results<>0 then
       MakeItvisible:=false 
    end;
    var
    MakeItvisible:Boolean;
}
