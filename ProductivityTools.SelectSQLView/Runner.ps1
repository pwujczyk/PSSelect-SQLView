clear
cd $PSScriptRoot
Import-Module .\ProductivityTools.SelectSQLView.psm1 -Force
Select-SQLView "me.RollupCost" "" "PawelDT" ".\SQL2017"  -verbose |Format-Table
Select-SQLView "me.RollupCost" 
#Select-SQLView "me.m1st" "where CategoryName like '%lekarz%' " "PawelDT" ".\SQL2017"  -verbose

#Select-SQLView "gt.Category"