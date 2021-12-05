$inputs=Get-Content C:\AOC\2021\AOC_2021\Day2\Inputs.txt
$currHorizontal=0
$currVert=0
foreach ($Instruction in $inputs) {
    $parsedComm=$Instruction.split()
    switch ($parsedComm[0])
    {
        "forward" {$currHorizontal+=$parsedComm[1] }
        "down" {$currVert+=$parsedComm[1] }
        "up" {$currVert-=$parsedComm[1] }
    }

}
Write-Host "Num Forward: " $currHorizontal
Write-Host "Depth: " $currVert
$currHorizontal * $currVert