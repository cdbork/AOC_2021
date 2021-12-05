$inputs=Get-Content C:\AOC\2021\Day1\Inputs.txt
$posA=0
$posB=1
$posC=2
$sumCurr=0
$sumNext=0
$numIncrease=0
$numDecrease=0
$numFlat=0
$sumNext=[int]$inputs[$posA]+[int]$inputs[$posB]+[int]$inputs[$posC]

while ($posC -le $inputs.Length) {
$posA++
$posB++
$posC++
$sumCurr=$sumNext
$sumNext=[int]$inputs[$posA]+[int]$inputs[$posB]+[int]$inputs[$posC]

$diffVal=$sumNext-$sumCurr
if ($diffVal -lt 0) {
   $numDecrease++
} elseif ($diffVal -gt 0) {
    $numIncrease++
} else {
    $numFlat++
}
}
Write-Host "Num Increase: " $numIncrease
Write-Host "Num Decrease: " $numDecrease
Write-Host "Num Flat: " $numFlat