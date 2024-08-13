function Remove-CWMAgreementAddition {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '', Justification = 'Used by sub-function')]
    [CmdletBinding(SupportsShouldProcess, ConfirmImpact = 'Medium')]
    param(
        [Parameter(Mandatory = $true)]
        [Alias('agreementId')]
        [int]$parentId,
        [Parameter(Mandatory = $true)]
        [Alias('additionId')]
        [int]$id
    )

    $Endpoint = "/finance/agreements/$($parentId)/additions/$($id)"
    Invoke-CWMRemoveMaster -Endpoint $Endpoint
}
