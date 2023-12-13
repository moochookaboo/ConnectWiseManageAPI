﻿function Get-CWMWorkflowEvent {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory=$true)]
        [Alias('typeId')]
        [int]$grandparentId,
   <#      [Parameter(Mandatory=$false)]
        [Alias('questionId')]
        [int]$parentId, #>
        [int]$id,
        [switch]$count,
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

    $Endpoint = "/system/workflows/$($grandparentId)/events"
    Invoke-CWMGetMaster -Arguments $PsBoundParameters -Endpoint $Endpoint
}
