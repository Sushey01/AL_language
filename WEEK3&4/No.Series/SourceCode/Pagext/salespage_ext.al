pageextension 50856 MyExtension extends "Sales & Receivables Setup"
{
    layout
    {
        // addafter("Customer Nos.")
        // {
        //     field("Parking No"; Rec."Parking No")
        //     {
        //         ApplicationArea = All;
        //     }

        addafter("Customer Nos.")
        {
            field("Wedding Ma Ako Manxe"; Rec."Wedding Ma Ako Manxe")
            {
                ApplicationArea = All;
            }
        }
    }
}
