#!/usr/bin/env pwsh
# Load powerline-go prompt
Write-Host "Hello!"
function global:prompt {
    $standardOut = $(~/go/bin/powerline-go -shell bare)
    $standardOut
}
