pageextension 50320 "Focus" extends "Customer List"
{
     layout
     {
        addafter("No."){
            field(Customer_Details;Rec.Customer_Details)
            {
                ApplicationArea = All;
                Caption='Details';
            }
        }
     }
    var
        myInt: Integer;
}



    
   
    
   
