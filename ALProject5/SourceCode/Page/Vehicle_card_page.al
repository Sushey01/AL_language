page 50251 Module
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Showroom;
    
    layout
    {
        area(Content)
        {
            group(GENERAL)
            {
                field("vehicle id";Rec."vehicle id")
                {
                    ApplicationArea = All;
                    
                }

                field("Manufacturer ID";Rec."Manufacturer ID")
                {
                    ApplicationArea = All;
                }

                field("vehicle Type";Rec."vehicle type")
                {
                    ApplicationArea = All;
                }

                field("Engine Type";Rec."Engine Type")
                {
                    ApplicationArea = All;
                }

                field(Year;Rec.Year)
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
            action(Sub_Menu)
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