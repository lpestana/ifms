@extends('layout.template')

@section('conteudo')
  <h1>Listagem de Endereços</h1>
  <a href="endereco/novo" class="btn btn-primary">
    <i class="fas fa-file"></i>
     Novo
  </a>
  <table class="table table-striped table-hover table-bordered table-sm">
    <thead>
      <tr>
        <th scope="col">ID</th>
        <th scope="col">Rua</th>
        <th scope="col">Número</th>
        <th scope="col">Cidade</th>
        <th scope="col">Cep</th>
        <th scope="col">Estado</th>
        <th></th>
      </tr>
    </thead>
    <tbody>
      @forelse ($enderecos as $endereco)
          <tr>
            <td>{{$endereco->id}}</td>
            <td>{{$endereco->rua}}</td>
            <td>{{$endereco->numero}}</td>
            <td>{{$endereco->cidade}}</td>
            <td>{{$endereco->cep}}</td>
            <td>{{$endereco->estado->nome}}</td>
            <td>
              <a href="{{route('endereco_editar',['id' => $endereco->id])}}" class="btn btn-primary"><i class="fas fa-pencil-alt"></i></a>
              <a href="{{route('endereco_excluir',['id' => $endereco->id])}}" class="btn btn-danger"><i class="fas fa-trash-alt"></i></a>
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
