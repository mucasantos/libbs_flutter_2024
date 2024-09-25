class ProdutoModel {
  final String imagem;
  final String titulo;
  final double preco;
  final String detalhes;
  final int quantidade;
  final int estrelas;
  final List<String> nutrientes;

  ProdutoModel({
    required this.detalhes,
    required this.quantidade,
    required this.estrelas,
    required this.nutrientes,
    required this.imagem,
    required this.titulo,
    required this.preco,
  });
}
