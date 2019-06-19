<?php 

namespace App\Http\Controllers;

use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;


Class Sayhellocontroller extends Controller
{
public function create()
{

return view('hello');
}


public function store(Rquest $request)
{

	print_r($request->all());
}


}



?>