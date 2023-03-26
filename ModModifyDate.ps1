$path = Read-Host "Path";
$fileOrFolder = Read-Host "Is it a file [f] or a folder [F]";
$date = Read-Host "New date (hour in 24h cycle) [DD/MM/YYYY hh:mm:ss]";

$date = [datetime]::parseexact($date, 'dd/MM/yyyy HH:mm:ss', $null);

if (($fileOrFolder -eq "F") -Or ($fileOrFolder.ToLower() -eq "folder"))
{
	[System.IO.Directory]::SetLastWriteTime($path, $date);
}
elseif (($fileOrFolder -eq "f") -Or ($fileOrFolder.ToLower() -eq "file"))
{
	[System.IO.File]::SetLastWriteTime($path, $date);
}
else
{
	Write-Host "[!] I don't know whether it is a file or a folder";
}
