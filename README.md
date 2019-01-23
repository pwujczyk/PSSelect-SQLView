<p align="right">
 <a href="https://www.powershellgallery.com/packages/ProductivityTools.PSSelectSQLView/">
  <img src="http://cdn.productivitytools.tech/Powershell40px.png" /></a>
<a href="http://www.productivitytools.tech/select-sqlview/">
<img src="http://cdn.productivitytools.tech/Blog40px.png" /><a>
</p>


# ProductivityTools.PSSelectSQLView
It allows to quickly select view or table from SQL Server. It saves database and server name in configuration so the shortest way of using it is Select-SQLView tableName


When first used you need to provide database name and server name.

```powershell
Select-SQLView -Name me.raport -DatabaseName PawelDT -ServerName .\sql2017
```

After first invocation database and server name will be stored in the configuration and next time you can call method with providing just table or view name.

```powershell
Select-SQLView me.raport3
```
