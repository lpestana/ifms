<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Estado;
use App\Models\Endereco;

class EnderecoController extends Controller
{ 
  function __construct() {
    $this->middleware('auth');
  }
    
    function index() {
      $enderecos = Endereco::all();
      return view('endereco.listagem',['enderecos' => $enderecos]);
    }


function novo() {
    $endereco = new endereco();
    $endereco->id = 0;
    $endereco->rua = "";
    $endereco->numero = "";
    $endereco->cidade = "";
    $endereco->cep = "";
    $endereco->estado_id = "";

    $estados = Estado::all();

    return view('endereco.formulario',
      [
        'endereco' => $endereco,
        'estados' => $estados
      ]
    );
  }

  function salvar(Request $request) {
      if ($request->input("id") == 0) {
        $endereco = new Endereco();
      } else {
        $endereco = Endereco::find($request->input("id"));
      }
      $endereco->rua = $request->input("rua");
      $endereco->numero = $request->input("numero");
      $endereco->cidade = $request->input("cidade");
      $endereco->cep = $request->input("cep");
      $endereco->estado_id = $request->input("estado_id");
      $endereco->save();
      return redirect()->route("endereco_listagem");
  }

  function editar($id) {
    $endereco = Endereco::find($id);
    $estados = Estado::all();
    return view('endereco.formulario',
      [
        'endereco' => $endereco,
        'estados' => $estados
      ]
    );

  }

  function excluir($id) {
    $endereco = endereco::find($id);
    $endereco->delete();
    return redirect()->route("endereco_listagem");
  }
}
