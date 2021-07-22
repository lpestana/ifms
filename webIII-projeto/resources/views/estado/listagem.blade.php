@extends('layout.template')

@section('conteudo')
  <h1>Listagem de Estado Cadastrado</h1>
  <a href="estado/novo" class="btn btn-primary">
    <i class="fas fa-file"></i>
     Novo
  </a>
  <table class="table table-striped table-hover table-bordered table-sm">
    <thead>
      <tr>
        <th scope="col">ID</th>
        <th scope="col">Estado</th>
        <th></th>
      </tr>
    </thead>
    <tbody>
      @forelse ($estados as $estado)
          <tr>
            <td>{{$estado->id}}</td>
            <td>{{$estado->nome}}</td>
            <td>
              <a href="{{route('estado_editar',['id' => $estado->id])}}" class="btn btn-primary"><i class="fas fa-pencil-alt"></i></a>
              <a href="{{route('estado_excluir',['id' => $estado->id])}}" class="btn btn-danger"><i class="fas fa-trash-alt"></i></a>
            </td>
          </tr>
      @empty
        <tr>
          <td>0</td>
          <td>Nenhum registro cadastrado</td>
        </tr>
      @endforelse
    </tbody>
  </table>
@endsection
