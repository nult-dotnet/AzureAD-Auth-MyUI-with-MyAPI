$tenantId = "7ff95b15-dc21-4ba6-bc92-824856578fc1"

Write-Host (az version)
Write-Host "Azure Create App Registration"


# $jsonObj = Get-Content "$(appregapi.json)" | Out-String | ConvertFrom-Json
# $data = ($bodyJSON | ConvertFrom-Json).value
# Write-Host "data: $bodyJSON"


$appId = "d5822f38-922b-4a1b-80dd-3a1befa52cae"
Write-Host "created appId: $appId"
# az ad app show --id "98328d53-55ec-4f14-8407-0ca5ff2f2d20"

az ad app update --id $appId --set groupMembershipClaims=None

az ad app update --id  $appId --optional-claims `@api_optional_claims.json

az ad app show --id $appId
