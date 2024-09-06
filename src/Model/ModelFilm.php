<?php

namespace App\Model;

use App\DAO\DAO_MySqli;
use App\system\Conf;

class ModelFilm
{

    private $dao;

    function __construct()
    {
        $this->dao = new DAO_MySqli();
    }

    public function getFilms()
    {
        $sql = "SELECT * FROM " . Conf::$film;
        $result = $this->dao->requete($sql);
        return $result;
    }
}
