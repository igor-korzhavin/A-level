<?
 echo "Enter fizz:\n";
 $handle1 = fopen ("php://stdin","r");
 $fizz = fgets($handle1);

 echo "Enter buzz:\n";
 $handle2 = fopen ("php://stdin","r");
 $buzz = fgets($handle2);

 echo "Enter iterations:\n";
 $handle3 = fopen ("php://stdin","r");
 $it = fgets($handle3);

 for ($x = 1; $x <= $it; $x++) 
 	{
 	if ($x % $fizz == 0 && $x % $buzz == 0) {
 		echo 'FB';
 	}
 	elseif ($x % $buzz == 0) {
 		echo 'B';
 	}
 	elseif ($x % $fizz == 0) {
 		echo 'F';
 	}
 	else 
 	{
 		echo "$x";
 	}
 }

 ?>