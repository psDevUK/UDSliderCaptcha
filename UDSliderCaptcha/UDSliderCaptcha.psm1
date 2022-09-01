$IndexJs = Get-ChildItem "$PSScriptRoot\index.*.bundle.js"
$AssetId = [UniversalDashboard.Services.AssetService]::Instance.RegisterAsset($IndexJs.FullName)

function New-UDSliderCaptcha {
    <#
    .SYNOPSIS
    Creates a new component
    
    .DESCRIPTION
    Creates a new component
    
    .PARAMETER Id
    The ID of this editor

    .PARAMETER Text
    Text for the component

    .EXAMPLE
    New-UDComponent -Text 'Hello, world!'
    #>
    
    param(
        [Parameter()]
        [string]$Id = (New-Guid).ToString(),
        [Parameter()]
        [string]$Title = "Please complete the jigsaw captcha",
        [Parameter()]
        [string]$SliderTitle = "Place jigsaw in correct position",
        [Parameter()]
        [string]$FailMessage = "Please try again",
        [Parameter()]
        [string]$SuccessMessage = "Success",
        [Parameter()]
        [string]$RefreshLabel = "Refresh"
    )

    End {
        @{
            assetId = $AssetId 
            isPlugin = $true 
            type = "udslidercaptcha"
            id = $Id

            title=$Title
            sliderTitle=$SliderTitle
            failMessage=$FailMessage
            successMessage=$SuccessMessage
            refrefButtonLabel=$RefreshLabel
        }
    }
}