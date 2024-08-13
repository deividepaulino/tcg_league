class LoginModel {
  int? id;
  String? name;
  String? lastName;
  int? age;
  String? email;
  String? password;
  String? token;

  LoginModel({
    this.id,
    this.name,
    this.lastName,
    this.age,
    this.email,
    this.password,
    this.token,
  });
  factory LoginModel.fromJson(Map<String, dynamic> json) {
    return LoginModel(
      name: json['nome'],
      lastName: json['sobrenome'],
      age: json['idade'],
      email: json['email'],
      password: json['senha'],
      token: json['token'],
      id: json['id'],
    );
  }

  Map<String, dynamic> toJson() => {
        'nome': name,
        'sobrenome': lastName,
        'idade': age,
        'email': email,
        'senha': password,
        'ativo': true,
        'emailConfirmado': true,
      };

  factory LoginModel.empty() {
    return LoginModel(
      name: '',
      lastName: '',
      age: 0,
      email: '',
      password: '',
      token: '',
      id: 0,
    );
  }
}
