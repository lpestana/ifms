<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\CategoriaController;
use App\Http\Controllers\ProdutoController;
use App\Http\Controllers\IndexController;
use App\Http\Controllers\EstadoController;
use App\Http\Controllers\EnderecoController;


/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
//abre tela inical
Route::get('/', [IndexController::class, 'index'])->name('inicio');


Route::get('/categoria', [CategoriaController::class, 'index'])->name('categoria_listagem');
Route::get('/categoria/novo', [CategoriaController::class, 'novo'])->name('categoria_novo');
Route::post('/categoria/salvar', [CategoriaController::class, 'salvar'])->name('categoria_salvar');
Route::get('/categoria/editar/{id}', [CategoriaController::class, 'editar'])->name('categoria_editar');
Route::get('/categoria/excluir/{id}', [CategoriaController::class, 'excluir'])->name('categoria_excluir');


Route::get('/produto', [ProdutoController::class, 'index'])->name('produto_listagem');
Route::get('/produto/novo', [ProdutoController::class, 'novo'])->name('produto_novo');
Route::post('/produto/salvar', [ProdutoController::class, 'salvar'])->name('produto_salvar');
Route::get('/produto/editar/{id}', [ProdutoController::class, 'editar'])->name('produto_editar');
Route::get('/produto/excluir/{id}', [ProdutoController::class, 'excluir'])->name('produto_excluir');


Route::get('/estado', [EstadoController::class, 'index'])->name('estado_listagem');
Route::get('/estado/novo', [EstadoController::class, 'novo'])->name('estado_novo');
Route::post('/estado/salvar', [EstadoController::class, 'salvar'])->name('estado_salvar');
Route::get('/estado/editar/{id}', [EstadoController::class, 'editar'])->name('estado_editar');
Route::get('/estado/excluir/{id}', [EstadoController::class, 'excluir'])->name('estado_excluir');


Route::get('/endereco', [EnderecoController::class, 'index'])->name('endereco_listagem');
Route::get('/endereco/novo', [EnderecoController::class, 'novo'])->name('endereco_novo');
Route::post('/endereco/salvar', [EnderecoController::class, 'salvar'])->name('endereco_salvar');
Route::get('/endereco/editar/{id}', [EnderecoController::class, 'editar'])->name('endereco_editar');
Route::get('/endereco/excluir/{id}', [EnderecoController::class, 'excluir'])->name('endereco_excluir');

Route::middleware(['auth:sanctum', 'verified'])->get('/dashboard', function () {
    return view('dashboard');
})->name('dashboard');
