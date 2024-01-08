pageextension 50311 "tab3" extends "Item Card"
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