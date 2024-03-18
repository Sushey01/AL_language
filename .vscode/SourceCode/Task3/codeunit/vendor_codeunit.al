codeunit 50120 VendorManagement
{

    procedure CountVendorRecords(): Integer
    var
        RecVendor: Record Vendor;
        VendorCount: Integer;
        Data: Code[20];
        int:Integer;
        salesheader: Record "Sales Header";
    begin
        RecVendor.RESET;
        VendorCount := 0;
        while RecVendor.NEXT <> 0 do
        begin
            VendorCount := VendorCount + 1;
        end;
        exit(VendorCount);
    end;
}


