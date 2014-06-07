<?php
// outputs the username that owns the running php/httpd process
// (on a system with the "whoami" executable in the path)
$temp = file_get_contents('/var/www/callernew.sh');
echo $temp;
shell_exec($temp);
echo exec ('whoami');
echo $_POST["name"];
?>
