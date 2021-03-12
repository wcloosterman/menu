$hostname = [System.Net.Dns]::GetHostName()
$input = $(
      Add-Type -AssemblyName Microsoft.VisualBasic
      [Microsoft.VisualBasic.Interaction]::InputBox('New machine name','RENAME MACHINE', $hostname)
     )

Rename-Computer -Newname $input -Force
