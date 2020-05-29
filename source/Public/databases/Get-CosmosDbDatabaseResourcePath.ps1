function Get-CosmosDbDatabaseResourcePath
{

    [CmdletBinding()]
    [OutputType([System.String])]
    param
    (
        [Alias('Name')]
        [Parameter(Mandatory = $true)]
        [ValidateScript({ Assert-CosmosDbDatabaseIdValid -Id $_ })]
        [System.String]
        $Id
    )

    return ('dbs/{0}' -f $Id)
}
