report 50251 "Item Sales Margin Comparison"
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultLayout = RDLC;
    RDLCLayout = 'SourceCode/Layouts/Item Sales Margin Comparison.rdl';
    
    dataset
    {
        dataitem("Item Ledger Entry";"Item Ledger Entry")
        {
            column(itemno; "Item No."){}
            column(CompanyInfo_Name; CompanyInfo.Name){}
            column(CompanyInfo_Picture; CompanyInfo.Picture){}
            column(Description;Description){}
            column(Unit_of_Measure_Code;"Unit of Measure Code"){}
            column(Quantity;Quantity){}
        }
    }
    
    requestpage
    {
        layout
        {
            area(Content)
            {
                group(GroupName)
                {
                    // field(Name; SourceExpression)
                    // {
                    //     ApplicationArea = All;
                        
                    // }
                }
            }
        }
    
        actions
        {
            area(processing)
            {
                action(LayoutName)
                {
                    ApplicationArea = All;
                    
                }
            }
        }
    }

    trigger OnInitReport()
    var
        myInt: Integer;
    begin
        companyInfo.GET();
        companyInfo.CalcFields(Picture);
    end;
       
    var
        CompanyInfo: Record "Company Information";
}