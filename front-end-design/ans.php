<?php
// outputs the username that owns the running php/httpd process
// (on a system with the "whoami" executable in the path)
$temp = file_get_contents('/var/www/AnswerIncomingCall.sh');
echo $temp;
shell_exec($temp);


?>
