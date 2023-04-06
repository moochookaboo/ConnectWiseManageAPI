<# function Get-CWMCompanyConfigurationTypeQuestion {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '', Justification = 'Used by sub-function')]
    [CmdletBinding(SupportsShouldProcess, ConfirmImpact='Medium')]
    param(
        [Parameter(Mandatory=$true)]
        [Alias('typeId')]
        [int]$grandparentId,
        [Parameter(Mandatory=$true)]
        [Alias('questionId')]
        [int]$parentId,
        [int]$id,
        [hashtable]$configurationType,
        [boolean]$defaultFlag,
        [boolean]$inactiveFlag,
        [hashtable]$question,
        [Parameter(Mandatory=$true)]
        [ValidateLength(1,1000)]
        [string]$value,
        [hashtable]$_info
    )

    $Endpoint = "/company/configurations/types/$($grandparentId)/questions/$($parentId)"
    Invoke-CWMGetMaster -Arguments $PsBoundParameters -Endpoint $Endpoint
} #>

function Get-CWMCompanyConfigurationTypeQuestionValue {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory=$true)]
        [Alias('typeId')]
        [int]$grandparentId,
        [Parameter(Mandatory=$false)]
        [Alias('questionId')]
        [int]$parentId,
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

    $Endpoint = "/company/configurations/types/$($grandparentId)/questions/$($parentId)/values"
    Invoke-CWMGetMaster -Arguments $PsBoundParameters -Endpoint $Endpoint
}
