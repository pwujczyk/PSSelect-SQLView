#
# Module manifest for module 'module'
#
# Generated by: pwujczyk
#
# Generated on: 6/22/2018 6:57:44 PM
#

@{

# Script module or binary module file associated with this manifest.
RootModule = 'ProductivityTools.SelectSQLView.psm1'

# Version number of this module.
ModuleVersion = '0.0.14'

# ID used to uniquely identify this module
GUID = '7e156c80-a88f-4b76-a368-150849748906'

# Author of this module
Author = 'Pawel Wujczyk'

# Description of the functionality provided by this module
Description = 'It allows to quickly select view or table from SQL Server. It saves database and server name in configuration so the shortest way of using it is Select-SQLView tableName'

# Modules that must be imported into the global environment prior to importing this module
RequiredModules = @('ProductivityTools.MasterConfiguration','ProductivityTools.SQLCommands')

# Functions to export from this module
FunctionsToExport = 'Select-SQLView'

# Aliases to export from this module
AliasesToExport = @('sq')

# HelpInfo URI of this module
HelpInfoURI = 'http://www.productivitytools.tech/select-sqlview/'


# Private data to pass to the module specified in RootModule/ModuleToProcess
PrivateData = @{
    
    PSData = @{
        # Tags applied to this module. These help with module discovery in online galleries.
        Tags = @('Select','SQL')
    
        # A URL to the main website for this project.
        ProjectUri = 'http://www.productivitytools.tech/select-sqlview/'
    
            } # End of PSData hashtable
    } # End of PrivateData hashtable   
}
