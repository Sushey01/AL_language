report 50250 "Detailed Sales"
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultLayout = RDLC;
    RDLCLayout = 'SourceCode/Layouts/Detailed Sales.rdl';
    
    dataset
    {
        dataitem("Item Ledger Entry";"Item Ledger Entry")
        {
            column(itemno; "Item No.")
            {
                
            }

            column(CompanyInfo_Name; CompanyInfo.Name)
            {
                
            }

            column(CompanyInfo_Picture; CompanyInfo.Picture)
            {
                
            }

            column(Description;Description)
            {

            }
            column(Unit_of_Measure_Code;"Unit of Measure Code")
            {

            }


            column(Quantity;Quantity)
            {

            }

            // column(CostSales; "Cost of Sales")
            // {

            // }

           
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