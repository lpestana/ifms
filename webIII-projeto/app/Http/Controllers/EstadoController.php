<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\models\Estado;

class EstadoController extends Controller
{
        function __construct() {
          $this->middleware('auth');
        }  
        function index() {
            $estados = Estado::all();
            return view('estado.listagem',['estados' => $estados]);
          }
      
          function novo() {
            $estado = new Estado();
            $estado->id = 0;
            $estado->nome = "";
            return view('estado.formulario', ['estado' => $estado] );
          }
      
          function salvar(Request $request) {
              if ($request->input("id") == 0) {
                $estado = new Estado();
              } else {
                $estado = Estado::find($request->input("id"));
              }
              $estado->nome = $request->input("nome");
              $estado->save();
              return redirect()->route("estado_listagem");
          }
      
          function editar($id) {
            $estado = Estado::find($id);
            return view("estado.formulario", ['estado' => $estado]);
          }
      
          function excluir($id) {
            $estado = Estado::find($id);
            $estado->delete();
            return redirect()->route("estado_listagem");
          }
}
