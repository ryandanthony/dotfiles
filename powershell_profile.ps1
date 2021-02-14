#!/usr/bin/env pwsh
# Load powerline-go prompt
Write-Host "Hello!"
# microk8s status 2>&1 | out-null
# if ($?)
# {
#     Write-Host "microk8s is installed. Using it's version of kubectl and helm3"
#     microk8s enable kubectl 2>&1 | out-null
#     microk8s enable helm3 2>&1 | out-null

#     Set-Alias -Name kubectl -Value microk8s.kubectl
#     Set-Alias -Name helm -Value microk8s.helm3
# }

function global:prompt {
    $standardOut = $(~/go/bin/powerline-go -shell bare)
    $standardOut
}
