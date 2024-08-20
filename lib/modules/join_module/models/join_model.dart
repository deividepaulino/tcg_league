// {
// 	"codigo_acesso" : "18B7E45E",
// 	"usuario_id" : 1,
// 	"deck" : 1
// }

class JoinModel {
  String? codigoAcesso;
  int? usuarioId;
  int? deck;

  JoinModel({
    this.codigoAcesso,
    this.usuarioId,
    this.deck,
  });

  JoinModel.fromJson(Map<String, dynamic> json) {
    codigoAcesso = json['codigo_acesso'] ?? 'N/A';
    usuarioId = json['usuario_id'] ?? -1;
    deck = json['deck'] ?? -1;
  }

  Map<String, dynamic> toJson() {
    return {
      "codigo_acesso": codigoAcesso,
      "usuario_id": usuarioId,
      "deck": deck,
    };
  }

  factory JoinModel.empty() {
    return JoinModel(
      codigoAcesso: '',
      usuarioId: -1,
      deck: -1,
    );
  }
}
