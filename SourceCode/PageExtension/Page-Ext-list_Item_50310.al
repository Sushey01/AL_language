pageextension 50310 "tab2" extends "Item List"
{
    layout
    {
        addafter("No."){
            field(Custom_Item;Rec.Custom_Item)
            {
                ApplicationArea = All;
            }
        }
    }
    
    actions
    {
        // Add changes to page actions here
    }
    
    var
        myInt: Integer;
}