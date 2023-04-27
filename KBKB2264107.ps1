#Author: James Millard
#Date: 11/04/2023
#Purpose: MS KB2264107: Insecure Library Loading Could Allow Remote Code Execution
#Notes:

$registryPath = 'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager'
$Name = "CWDIllegalInDllSearch"
$value = '00000001' 

Set-ExecutionPolicy -executionpolicy Undefined -Scope LocalMachine

IF((Test-Path $registryPath))
{
new-itemproperty -Path $registryPath -name $name -value $value -propertytype Dword -force | out-null

}

else {
exit
}
