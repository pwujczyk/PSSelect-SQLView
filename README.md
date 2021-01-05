<!--Category:Powershell,SQL--> 
 <p align="right">
    <a href="https://www.powershellgallery.com/packages/ProductivityTools.PSSelectSQLView/"><img src="Images/Header/Powershell_border_40px.png" /></a>
    <a href="http://productivitytools.tech/select-sqlview/"><img src="Images/Header/ProductivityTools_green_40px_2.png" /><a> 
    <a href="https://github.com/pwujczyk/ProductivityTools.PSSelectSQLView"><img src="Images/Header/Github_border_40px.png" /></a>
</p>
<p align="center">
    <a href="http://productivitytools.tech/">
        <img src="Images/Header/LogoTitle_green_500px.png" />
    </a>
</p>



# ProductivityTools.PSSelectSQLView
It allows to quickly select view or table from SQL Server. 

```powershell
Select-SQLView -Name me.raport -DatabaseName PawelDT -ServerName .\sql2019
```

You could save your server name and database name in the MasterConfiguration so it won't be needed to pass them later.

![MasterConfiguration](Images/Configuration.png)

```powershell
Select-SQLView me.raport
```
