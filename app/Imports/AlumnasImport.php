<?php

namespace App\Imports;

use App\Alumna;
use Maatwebsite\Excel\Concerns\ToModel;
use function Psy\debug;

/* use Illuminate\Support\Collection;
    use Maatwebsite\Excel\Concerns\ToCollection; */

class AlumnasImport implements ToModel
{
    /**
    * @param array $row
    *
    * @return \Illuminate\Database\Eloquent\Model|null
    */
    
   public function model(array $row)
   {
       
            return new Alumna([
                'rut'        => $row[6],
                'digito'     => $row[7],
                'curso'      => $row[3].'° '.$row[5],
                'apellidos'  => $row[10].' '.$row[11],
                'nombres'    => $row[9],   
            ]);

            

       
   }
}
