<?php

if (!empty($_POST['nomer_kv'])){
$i =$_POST['nomer_kv'];
}

class Home
{
    public $look_kv;
    public $kvartir_na_etaje;
    public $etaj;
    public $home;

    function __construct($home, $look_kv)
    {
        $this->home = $home;
        $this->look_kv = $look_kv;
    }

    public function wthome()

    {
        if ($this->home == "ST_5_4") {
            echo "В пятиэтажке это   "  ;
            $this->kvartir_na_etaje = 3;
            $this->etaj = 5;
        } elseif ($this->home == "Khr_9_5") {
            echo "В девятиэтажке это " ;
            $this->kvartir_na_etaje = 4;
            $this->etaj = 9;
        }

    }

    public function sumKvartir()
    {
        return $sumaKvartir = $this->etaj * $this->kvartir_na_etaje;

    }


    public function helpLook()
    {
         $a = ($this->look_kv - 1) / $this->sumKvartir();
       $b=floor($a);
     echo Подъезд . " " . $podezd= $b + 1 . " ";
      $c = $a - $b;
     echo Этаж . " " . $etajj = floor($c * $this->etaj + 1 ) . "<br>";

    }
}

$object = new Home("ST_5_4", $i);
$object->wthome();
$object->sumKvartir();
$object->helpLook();

$obj = new Home("Khr_9_5", $i);
$obj->wthome();
$obj->sumKvartir();
$obj->helpLook();
