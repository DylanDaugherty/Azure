$seed = get-random -maximum 100
$groupName = "Ground-$seed"
$servName = "Linux-$seed"
$secureName = "Secure-$seed"
$servLocation = "West US"
$servPort = "80,22"
$servSize = "Standard_b1s"
$servImage = "UbuntuLTS"
$servUser = "Whyzerd"





$servInfo = New-AzVm -ResourceGroupName $groupName -Name $servName -Location $servLocation -SecurityGroupName $secureName -OpenPorts $servPort -size $servSize -Image $servImage