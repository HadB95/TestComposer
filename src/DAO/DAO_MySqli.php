<?php
namespace App\DAO;
use App\system\Conf;
class DAO_MySqli implements DAO
{

    private $mysqli;

    function __construct()
    {
        // connexion
        $this->mysqli = new \mysqli(Conf::$bdd['host'], Conf::$bdd['user'], Conf::$bdd['pass'], Conf::$bdd['database'], Conf::$bdd['port']);
    }

    function requete($sql)
    {
        // echo $sql;
        try {
            $result = $this->mysqli->query($sql);
            $data = [];
            for ($row_no = $result->num_rows - 1; $row_no >= 0; $row_no--) {
                $result->data_seek($row_no);
                $row = $result->fetch_assoc();
                $data[] = $row;
            }
            return $data;
        } catch (\Exception) {
            return false;
        }
    }
}
