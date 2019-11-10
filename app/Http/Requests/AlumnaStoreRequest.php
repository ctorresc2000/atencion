<?php

namespace App\Http\Requests;

use App\Http\Requests\AlumnaStoreRequest;
use App\Http\Requests\AlumnaUpdateRequest;

use Illuminate\Foundation\Http\FormRequest;

class AlumnaStoreRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'rut' => 'required|unique:alumnas,rut', //'slug' => 'required|unique:tags,slug',
        ];
    }
}
