function getnum {
$i = Get-Random -Minimum 1 -Maximum 3
Write-Verbose "Random result = $i"
return $i
}


Function random-Color{
    $max = [System.ConsoleColor].GetFields().Count - 1
    $color = [System.ConsoleColor](Get-Random -Min 0 -Max $max)
    return $color
}

Function update-Color{
    $text = random-Color
    $bg = random-Color
    if($text = $bg){$bg = random-Color}
    $host.UI.RawUI.ForegroundColor = $text
    $host.UI.RawUI.BackgroundColor = $bg
 }
 $k=1
 while($k=1){
 
 $i = Get-Random -Minimum 1 -Maximum 4
 if ($i -eq 1){
        Write-Host "Validating Temporal Integrity"
        gps 
        update-Color
        Start-Sleep -s 2
    }
    elseif($i -eq 2){
        Write-Host "Flushing Chromatic Tubes"
        Get-NetIPAddress
        update-Color
        Start-Sleep -s 2
    }
    elseif($i -eq 3){
        Write-Host "Gathering Transmog Logs"
        Get-Content -Path .\TransmogLogs.txt
        update-Color
        Start-Sleep -s 2
    }
    else{
        Write-Host "Recalibrating Structral Harmonics"
        update-Color
        Start-Sleep -s 2
    }
 
 
 }