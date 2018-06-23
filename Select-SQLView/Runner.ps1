clear""
cd $PSScriptRoot
Import-Module .\Select-SQLView.psm1 -Force
Select-SQLView "me.m1st" "" "PawelDT" ".\SQL2017"  -verbose

#Select-SQLView "me.m1st" "where CategoryName like '%lekarz%' " "PawelDT" ".\SQL2017"  -verbose

Select-SQLView "me.m1st"