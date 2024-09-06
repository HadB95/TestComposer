<?php 
declare(strict_types=1);
require "vendor/autoload.php";
use PHPUnit\Framework\TestCase;
use App\Model\ModelFilm;
use App\system\Conf;

final class FilmTest extends TestCase{
    public function testFilmModelFilm() : void{
        $f = new ModelFilm();
        $data = $f->getFilms();
        $this->assertIsArray($data);
        $this->assertArrayHasKey('titre',$data[0]);
    }
    
    public function testFilmModelFilmFalse() : void{
        $f = new ModelFilm();
        $film = Conf::$film;
        Conf::$film = 'aaaa';
        $data = $f->getFilms();
        Conf::$film =$film;
        $this->assertFalse($data);
    }
}