<?php

// define('NAMA', 'Farid Maulan S');
// echo NAMA;

// echo "<br>";

// const UMUR = 21;
// echo UMUR;


// class Coba {
//   const NAMA = 'Farid';
// }

// echo COBA::NAMA;

class Coba
{
    public $kelas = __CLASS__;
}

$obj = new Coba;
echo $obj->kelas;

echo "<hr>";
echo __LINE__;
echo "<hr>";
echo __FILE__;
echo "<hr>";
echo __DIR__;
echo "<hr>";
