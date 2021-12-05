$inputs=Get-Content C:\AOC\2021\AOC_2021\Day2\Inputs.txt
$currHorizontal=0
$currVert=0
$aim=0
foreach ($Instruction in $inputs) {
    $parsedComm=$Instruction.split()
    switch ($parsedComm[0])
    {
        "forward" {$currHorizontal+=[int]$parsedComm[1]; $currVert+=([int]$parsedComm[1]*$aim) }
        "down" {$aim+=[int]$parsedComm[1] }
        "up" {$aim-=[int]$parsedComm[1] }
    }

}
Write-Host "Num Forward: " $currHorizontal
Write-Host "Depth: " $currVert
$currHorizontal * $currVert