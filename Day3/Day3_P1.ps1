$inputs=Get-Content C:\AOC\2021\AOC_2021\Day3\Inputs.txt
$countZero=0
$countOne=0
[string]$gamValue=''
[string]$epValue=''

for ($pos=0;$pos -lt $inputs[0].Length;$pos++)
{
    foreach ($string in $inputs) {
        if ($string[$pos] -eq '0') {
            $countZero++
        } else {
            $countOne++
        }
    }
        if ($countZero -gt $countOne) {
            $gamValue+='0'
            $epValue+='1'            
        } else {
            $gamValue+='1'
            $epValue+='0'
        }
        $countZero=0
        $countOne=0
}
$gamint = [Convert]::ToInt32($gamValue,2)
$epint = [Convert]::ToInt32($epValue,2)
$gamint * $epint