// # Publish the event
// codeunit 50110 Pubishers
// {
//     [IntegrationEvent(false, false)]

//     procedure onAddressLinechanged(line: Text[100]);
//     begin

//     end;
// }


// #
// pageextension 50111 CustomerExt extends "Card of Customer"
// {
//     layout
//    {
//     modify(Address)
//     {
//         trigger OnBeforeValidate();
//         var
//             publisher: Codeunit Publishers;
//         begin
//           publisher.onAddressLinechanged(Rec.Address);  
//         end;
//     }
//    }
// }