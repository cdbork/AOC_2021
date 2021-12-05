$inputs=Get-Content C:\AOC\2021\Day1\Inputs.txt
$currvalue=0
$nextvalue=0
$numIncrease=0
$numDecrease=0
$numFlat=0
$initVal=$true

foreach ($measure in $inputs) {
    $currvalue=$nextvalue
    $nextvalue=$measure

    if ($initVal -eq $false)
    {
        $diffVal=$nextValue-$currValue
        if ($diffVal -lt 0) {
            $numDecrease++
        } elseif ($diffVal -gt 0) {
            $numIncrease++
        } else {
            $numFlat++
        }
    }
    $initVal=$false
}
Write-Host "Num Increase: " $numIncrease
Write-Host "Num Decrease: " $numDecrease
Write-Host "Num Flat: " $numFlat