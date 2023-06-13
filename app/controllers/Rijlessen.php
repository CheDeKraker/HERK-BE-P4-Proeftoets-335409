<?php

class Rijlessen extends BaseController
{
    private $RijlessenModel;

    public function __construct()
    {
        $this->RijlessenModel = $this->model('RijlessenModel');
    }

    public function overzichtRijlessen()
    {
        $result = $this->RijlessenModel->getRijlessen();
        $rows = "";
        $amount = 0;
        foreach ($result as $Rijles) {
            $amount++;
            $rows .= "<tr>
                        <td>$Rijles->Voornaam</td>
                        <td>$Rijles->Mobiel</td>
                        <td>$Rijles->PakketNaam</td>
                        <td>$Rijles->AantalLessen</td>        
                        <td>$Rijles->Prijs</td>
                        <td>$Rijles->StartDatumRijlessen</td> 
                        <td>$Rijles->DatumRijbewijsBehaald</td>         
                      </tr>";
        }
        
        $data = [
            'title' => 'Overzicht Rijlespakketen Leerlingen',
            'rows' => $rows,
            'amount' => $amount
        ];

        $this->view('Rijlessen/overzichtRijlessen', $data);
    }
}