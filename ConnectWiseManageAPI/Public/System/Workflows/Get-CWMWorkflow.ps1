function Get-CWMWorkflow {
    [CmdletBinding()]
    param(
        [Alias('workflowname')]
        [string]$id,
        [string]$condition,
        [ValidatePattern('\S* (desc|asc)')]
        [string]$orderBy,
        [string]$childConditions,
        [string]$customFieldConditions,
        [int]$page,
        [int]$pageSize,
        [string[]]$fields,
        [switch]$all
    )

    $Endpoint = '/system/workflows'
    $Result = Invoke-CWMGetMaster -Arguments $PsBoundParameters -Endpoint $Endpoint
    if(!$Result){ return }
    if($id){ ConvertFrom-CWMColumnRow -Data $Result }
    else{ $Result }
}