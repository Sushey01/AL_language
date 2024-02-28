report 50105 "PLAYERS REPORT"
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultLayout=RDLC;
    RDLCLayout='.SourceCode\Report\report.rdl';
    
    dataset
    {
        dataitem(GENERAL; PLAYERS)
        {
            column(Name; "Players details")
            {
                
            }
            column(Details; "Players details")
            {
                
            }
             column(Stats; "player stats")
            {
                
            }
            
        }
    }
}