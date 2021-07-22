<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Produto;
use App\Models\Categoria;

class ProdutoController extends Controller
{
    function __construct() {
      $this->middleware('auth');
    }
  
        function index() {
          $produtos = Produto::all();
          return view('produto.listagem',['produtos' => $produtos]);
        }


    function novo() {
        $produto = new Produto();
        $produto->id = 0;
        $produto->descricao = "";
        $produto->valorunitario = "";
        $produto->embalagem = "";
        $produto->estoque = "";
        $produto->categoria_id = "";
    
        $categorias = Categoria::all();
    
        return view('produto.formulario',
          [
            'produto' => $produto,
            'categorias' => $categorias
          ]
        );
      }
    
      function salvar(Request $request) {
          if ($request->input("id") == 0) {
            $produto = new Produto();
          } else {
            $produto = Produto::find($request->input("id"));
          }
          $produto->descricao = $request->input("descricao");
          $produto->valorunitario = $request->input("valorunitario");
          $produto->embalagem = $request->input("embalagem");
          $produto->estoque = $request->input("estoque");
          $produto->categoria_id = $request->input("categoria_id");
          $imagem = "";
          if ($request->file('file')) {
            $path = $request->file('file')->store(
              'public');
            $caminhos = explode("/", $path);
            $tamanho = sizeof($caminhos);
            $imagem = $caminhos[$tamanho-1];
    
            if ($produto->imagem != "") {
              Storage::delete('public/'.$produto->imagem);
            }
          }
          if ($imagem != "") {
            $produto->imagem = $imagem;
          }
          $produto->save();
          return redirect()->route("produto_listagem");
      }
    
      function editar($id) {
        $produto = Produto::find($id);
        $categorias = Categoria::all();
        return view('produto.formulario',
          [
            'produto' => $produto,
            'categorias' => $categorias
          ]
        );
    
      }
    
      function excluir($id) {
        $produto = Produto::find($id);
        if ($produto->imagem != "") {
          Storage::delete('public/'.$produto->imagem);
        }
        $produto->delete();
        return redirect()->route("produto_listagem");
      }
}
