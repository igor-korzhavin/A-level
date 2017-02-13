<?php


echo "how old are you?\n";
$handle = fopen ("php://stdin","r");
$old = fgets($handle);

if ($old >= 18 ) {
	echo "Congratulations, you can drink beer" ;
}
elseif ($old > 0 && $old <= 6) {
    echo "baby, go to kindergarten!";
}
elseif ($old > 6 && $old < 18) {
	echo "I'm sorry, you are too early to drink alcohol";
}
else {
	echo "\nYou asked about the age! enter the number of the age!\n";
}
?>