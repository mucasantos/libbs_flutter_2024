class UserModel {
  String name;
  int idade;

  UserModel({
    required this.idade,
    required this.name,
  });
  //método que retorna o ano de nascimento

  int anoNascimento() {
    return DateTime.now().year - idade;
  }
}
