<?php

echo "enter PI  number\n";
$handle = fopen ("php://stdin","r");
$input = fgets($handle);

echo ($input == 3.14) ? "correct!" : "Go teach math!"; 

echo "\n";
?>