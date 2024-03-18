pageextension 50121 VendorExt extends "Vendor List"
{
    layout
    {
        // Add changes to page layout here
    }

    actions
    {
        // Add changes to page actions here
        addfirst(processing)
        {
            action(Setfilter)
            {
                ApplicationArea = all;
                Image = Action;
                Promoted = true;
                PromotedIsBig = true;
                Description = 'This is a total vendor list';
                ToolTip = 'Click on for further information';

                trigger OnAction()
                begin
                    rec.SetFilter("No.",'%1', '01454545');
                end;
            }
        }
    }

    var
        myInt: Integer;
}