<?php

namespace App\Imports;

use App\Alumna;

use Illuminate\Validation\Rule;
use Maatwebsite\Excel\Concerns\ToModel;
use Illuminate\Support\Facades\Input;
use Maatwebsite\Excel\Concerns\WithValidation;
use Maatwebsite\Excel\Concerns\WithHeadingRow;
use function Psy\debug;

/* use Illuminate\Support\Collection;
    use Maatwebsite\Excel\Concerns\ToCollection; */
use Maatwebsite\Excel\Imports\HeadingRowFormatter;
HeadingRowFormatter::default('none');

class AlumnasImport implements ToModel, WithHeadingRow
{
    /**
    * @param array $row
    *
    * @return \Illuminate\Database\Eloquent\Model|null
    */

   public function model(array $row)
   {
      
                return new Alumna([
                    'anio'       => $row['Año'],
                    'rut'        => $row['Run'],
                    'digito'     => $row['Dígito Ver.'],
                    'curso'      => $row['Cod Grado'].'° '.$row['Letra Curso'],
                    'apellidos'  => $row['Apellido Paterno'].' '.$row['Apellido Materno'],
                    'nombres'    => $row['Nombres'],        
                ]);
             
              
   }

   /* public function rules(): array
    {
        return [
            'rut' => 'required|'.Rule::unique('alumnas'),
        ];
    } */

}
