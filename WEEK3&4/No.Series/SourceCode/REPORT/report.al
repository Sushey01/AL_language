report 50885 MyReport
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;

    
    defaultlayout =RDLC;
    RDLClayout = '.\SourceCode\REPORT\report.rdl';
    
    dataset
    {
        dataitem(Name; Customer)
        {
            column(Customer_Name; Name)
            {
                
            }
            
             column(Amounts; Amount)
            {
                
            }
        }
    }
    
    var
        myInt: Integer;
}

