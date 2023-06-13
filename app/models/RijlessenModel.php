<?php

class RijlessenModel
{
    private $db;

    public function __construct()
    {
        $this->db = new Database();
    }

    public function getRijlessen()
    {
        $sql = "SELECT Id
                      ,Voornaam
                      ,Mobiel
                      ,Pakket Naam
                      ,AantalLessen
                      ,Prijs
                      ,StartDatumRijlessen
                      ,DatumRijbewijsBehaald
                FROM  LeerlingPerLesPakket LPLP, LesPakket LP, Leerling L
                WHERE LPLP.LesPakketId = LP.Id
                AND LPLP.LeerlingId = L.Id";

        $this->db->query($sql);
        return $this->db->resultSet();
    }
}