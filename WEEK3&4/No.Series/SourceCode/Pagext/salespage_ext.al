pageextension 50856 MyExtension extends "Sales & Receivables Setup"
{
    layout
    {
        addafter("Customer Nos.")
        {
            field("Parking No"; Rec."Parking No")
            {
                ApplicationArea = All;
            }
        }
    }
}