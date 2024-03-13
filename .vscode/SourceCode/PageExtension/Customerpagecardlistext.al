pageextension 50110 "Customer Card Ext" extends "Customer Card"
{
    layout
    {
        addafter("No.")
        {
            field("External No"; Rec."External No.")
            {
                ApplicationArea = All;
            }
        }
        // Add changes to page layout here
    }
    
    actions
    {
        // Add changes to page actions here
    }
    
    var
        myInt: Integer;
}