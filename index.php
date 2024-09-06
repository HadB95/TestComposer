<?php
require "vendor/autoload.php";
use App\Calcul\Addition as CalculAddition;//avec alias
use App\Math;
use App\Model\ModelFilm;
use App\Model\ModelMeteo;
use App\system\Conf;

/* $a = new CalculAddition();
$r = $a->add([4,5,6]);
echo "le résultat de 4 + 5 + 6 est : {$r}";
echo "<br/>";

$b = new \App\Math\Addition();//sans alias
$s = $b->add(4,5);
echo "la somme de 4 + 5 est : {$s}";

$g = new ModelFilm();
$data = $g->getFilms();
var_dump($data); */

$model = new ModelMeteo();
$url = Conf::$url;
Conf::$url = 'https://google.com';
$data = $model->selectMeteo('Parretgherzis');
Conf::$url = $url;
var_dump($data);