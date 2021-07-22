@extends('layout.template')

@section('conteudo')
  <h1>Listagem de Produtos</h1>
  <a href="produto/novo" class="btn btn-primary">
    <i class="fas fa-file"></i>
     Novo
  </a>
  <table class="table table-striped table-hover table-bordered table-sm">
    <thead>
      <tr>
        <th scope="col">ID</th>
        <th scope="col">Descrição</th>
        <th scope="col">Valor Unitário</th>
        <th scope="col">Embalagem</th>
        <th scope="col">Estoque</th>
        <th scope="col">Categoria</th>
        <th></th>
      </tr>
    </thead>
    <tbody>
      @forelse ($produtos as $produto)
          <tr>
            <td>{{$produto->id}}</td>
            <td>{{$produto->descricao}}</td>
            <td>{{$produto->valorunitario}}</td>
            <td>{{$produto->embalagem}}</td>
            <td>{{$produto->estoque}}</td>
            <td>{{$produto->categoria->descricao}}</td>
            <td>
              @if($produto->imagem != "")
                <img style="width: 50px" src="storage/{{$produto->imagem}}" >
              @endif
            </td>
            <td>
              <a href="{{route('produto_editar',['id' => $produto->id])}}" class="btn btn-primary"><i class="fas fa-pencil-alt"></i></a>
              <a href="{{route('produto_excluir',['id' => $produto->id])}}" class="btn btn-danger"><i class="fas fa-trash-alt"></i></a>
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
