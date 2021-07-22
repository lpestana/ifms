@extends('layout.template')

@section('conteudo')
  <h1>Cadastro de Estado</h1>
  <form action="{{route('estado_salvar')}}" method="post">
    {{ csrf_field() }}
    <div class="mb-3">
      <label for="id" class="form-label">ID</label>
      <input type="text" class="form-control" id="id" name="id" readonly value="{{$estado->id}}">
    </div>
    <div class="mb-3">
      <label for="nome" class="form-label">Estado</label>
      <input type="text" class="form-control" id="nome" name="nome" value="{{$estado->nome}}">
    </div>
    <button type="submit" class="btn btn-primary"><i class="fas fa-save"></i> Salvar</button>
  </form>
@endsection
