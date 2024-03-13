codeunit 50111 EventSub
{

    [EventSubscriber(ObjectType::Table, Database::"Sales Header", 'OnAfterValidateEvent', 'Sell-to Customer No.', false, false)]
    local procedure OnAfterValidateEventSelltoCustomerNo(CurrFieldNo: Integer; var Rec: Record "Sales Header"; var xRec: Record "Sales Header")
    var
        Cust: Record Customer;
    begin
        if Cust.get(rec."Sell-to Customer No.") then
            rec."External Document No." := Cust."External No.";

    end;
}