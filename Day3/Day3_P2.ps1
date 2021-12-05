$inputs=Get-Content C:\AOC\2021\AOC_2021\Day3\Inputs.txt
#$inputs=Get-Content C:\AOC\2021\AOC_2021\Day3\Inputs_Test.txt

$countZero=0
$countOne=0
[System.Collections.ArrayList]$OxyArray=$inputs
[System.Collections.ArrayList]$Co2Array=$inputs
[string]$gamValue=''
[string]$epValue=''

for ($pos=0;$pos -lt $inputs[0].Length;$pos++)
{
    if ($OxyArray.Count -ge 1) {
        foreach ($string in $OxyArray) {
            if ($string[$pos] -eq '0') {
                $countZero++
            } else {
                $countOne++
            }
        }
            if ($countZero -gt $countOne) {
                for ($editPos=0; $editPos -lt $OxyArray.Count; $editPos++) {                      
                    if ($OxyArray[$editPos][$pos] -eq '1'){
                        $OxyArray.RemoveAt($editPos)
                        $editPos--
                    }
                }        
            } else {
                for ($editPos=0; $editPos -lt $OxyArray.Count; $editPos++) {                      
                    if ($OxyArray[$editPos][$pos] -eq '0'){
                        $OxyArray.RemoveAt($editPos)
                        $editPos--
                    }
                }    
            }
            $countZero=0
            $countOne=0
    }
    if ($Co2Array.Count -gt 1) {
        foreach ($string in $Co2Array) {
            if ($string[$pos] -eq '0') {
                $countZero++
            } else {
                $countOne++
            }
        }
            if ($countOne -lt $countZero) {
                for ($editPos=0; $editPos -lt $Co2Array.Count; $editPos++) {                      
                    if ($Co2Array[$editPos][$pos] -eq '0'){
                        $Co2Array.RemoveAt($editPos)
                        $editPos--
                    }
                }        
            } else {
                for ($editPos=0; $editPos -lt $Co2Array.Count; $editPos++) {                      
                    if ($Co2Array[$editPos][$pos] -eq '1'){
                        $Co2Array.RemoveAt($editPos)
                        $editPos--
                    }
                }    
            }
            $countZero=0
            $countOne=0
    }
####

}

Write-Host "Done"
$OxyArray
$Co2Array

$oxyint = [Convert]::ToInt32($OxyArray,2)
$co2int = [Convert]::ToInt32($Co2Array,2)
$oxyint * $co2int