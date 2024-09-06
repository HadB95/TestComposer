<?php 
declare(strict_types=1);
require "vendor/autoload.php";
use PHPUnit\Framework\TestCase;
use App\Model\ModelMeteo;
use App\system\Conf;

final class MeteoTest extends TestCase{

    public function testModelModelMeteoCityInfo() : void{
        $model = new ModelMeteo();
        $data = $model->selectMeteo('Paris');
        $this->assertArrayHasKey('city_info',$data);
    }

    public function testModelModelMeteoFalse() : void{
        $model = new ModelMeteo();
        $url = Conf::$url;
        Conf::$url = 'https://google.com';
        $data = $model->selectMeteo('Parretgherzis');
        Conf::$url = $url;
        $this->assertFalse($data);
    }

    public function testModelModelMeteoErrors() : void{
        $model = new ModelMeteo();
        $data = $model->selectMeteo('Parretgherzis');
        $this->assertArrayHasKey('errors',$data);
    }
}