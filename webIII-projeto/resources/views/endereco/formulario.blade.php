@extends('layout.template')

@section('conteudo')
  <h1>Cadastro de Endereços</h1>
  <form action="{{route('endereco_salvar')}}" method="post">
    {{ csrf_field() }}
    <div class="mb-3">
      <label for="id" class="form-label">ID</label>
      <input type="text" class="form-control" id="id" name="id" readonly value="{{$endereco->id}}">
    </div>
    <div class="mb-3">
      <label for="rua" class="form-label">Rua</label>
      <input type="text" class="form-control" id="rua" name="rua" value="{{$endereco->rua}}">
    </div>
    <div class="mb-3">
      <label for="numero" class="form-label">Número</label>
      <input type="text" class="form-control" id="numero" name="numero" value="{{$endereco->numero}}">
    </div>
    <div class="mb-3">
      <label for="cidade" class="form-label">Cidade</label>
      <input type="text" class="form-control" id="cidade" name="cidade" value="{{$endereco->cidade}}">
    </div>
    <div class="mb-3">
      <label for="cep" class="form-label">CEP</label>
      <input type="text" class="form-control" id="cep" name="cep" value="{{$endereco->cep}}">
    </div>
    <div class="mb-3">
      <label for="estado_id" class="form-label">Estado</label>
      <select class="form-select" name="estado_id" id="estado_id">
        @foreach ($estados as $estado)
          <option
          {{ $endereco->estado_id == $estado->id?"selected":""}}
          value="{{$estado->id}}">{{$estado->nome}}</option>
        @endforeach
      </select>
    </div>
    <button type="submit" class="btn btn-primary"><i class="fas fa-save"></i> Salvar</button>
  </form>
@endsection
