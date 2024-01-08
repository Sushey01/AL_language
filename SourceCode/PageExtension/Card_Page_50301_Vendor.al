pageextension 50301 MyExtension2 extends "Vendor Card"
{
    layout
    {
        addafter("No.")
        {

            field(Acc_Name; rec.Acc_Name)
            {
                ApplicationArea = All;
            }
        }
    }

    actions
    {
        addfirst(processing)
        {
            group(General)
            {
                Caption = 'group';
                ToolTip = 'this is just a sample group';
                Image = PersonInCharge;



                action(Menu)
                {

                    Caption = 'Menu';
                    ToolTip = 'This is just a sub menu button';
                    Promoted = true;
                    PromotedCategory = Process;
                    PromotedIsBig = true;
                    // PromotedOnly = true;

                    trigger OnAction()
                    begin
                        Message('This is a message for action');
                    end;


                }
            }
    }
}
}