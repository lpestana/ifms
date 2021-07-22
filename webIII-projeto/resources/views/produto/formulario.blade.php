@extends('layout.template')

@section('conteudo')
  <h1>Cadastro de Produtos</h1>
  <form action="{{route('produto_salvar')}}" method="post" enctype="multipart/form-data">
    {{ csrf_field() }}
    <div class="mb-3">
      <label for="id" class="form-label">ID</label>
      <input type="text" class="form-control" id="id" name="id" readonly value="{{$produto->id}}">
    </div>
    <div class="mb-3">
      <label for="descricao" class="form-label">Descrição</label>
      <textarea class="form-control" id="descricao" name="descricao" rows="1">{{$produto->descricao}}</textarea>
    </div>
    <div class="mb-3">
      <label for="valorunitario" class="form-label">VAlor Unitário</label>
      <textarea class="form-control" id="valorunitario" name="valorunitario"  rows="1">{{$produto->valorunitario}}</textarea>
    </div>
    <div class="mb-3">
      <label for="embalagem" class="form-label">Embalagem</label>
      <input type="text" class="form-control" id="embalagem" name="embalagem" value="{{$produto->embalagem}}">
    </div>
    <div class="mb-3">
      <label for="estoque" class="form-label">Estoque</label>
      <input type="text" class="form-control" id="estoque" name="estoque" value="{{$produto->estoque}}">
    </div>
    <div class="mb-3">
      <label for="file" class="form-label">Arquivo</label>
      <input type="file" class="form-control @error('file') is-invalid @enderror" id="file" name="file" accept="image/*">
      @error('file')
          <div class="alert alert-danger">{{ $message }}</div>
      @enderror
    </div>
    <div class="mb-3">
      <label for="categoria_id" class="form-label">Categoria</label>
      <select class="form-select" name="categoria_id" id="categoria_id">
        @foreach ($categorias as $categoria)
          <option
          {{ $produto->categoria_id == $categoria->id?"selected":""}}
          value="{{$categoria->id}}">{{$categoria->descricao}}</option>
        @endforeach
      </select>
    </div>
    <button type="submit" class="btn btn-primary"><i class="fas fa-save"></i> Salvar</button>
  </form>
@endsection
